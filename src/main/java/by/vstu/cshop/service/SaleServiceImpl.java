package by.vstu.cshop.service;

import by.vstu.cshop.model.Sale;
import by.vstu.cshop.model.SaleProduct;
import by.vstu.cshop.model.SaleStatus;
import by.vstu.cshop.model.User;
import by.vstu.cshop.repository.SaleRepository;
import by.vstu.cshop.repository.SupplyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class SaleServiceImpl implements SaleService {

    @Autowired
    private SaleRepository saleRepository;
    @Autowired
    private SupplyRepository supplyRepository;

    @Transactional
    @Override
    public void save(final Sale sale) {
        sale.setLastUpdateDate(new Date());
        saleRepository.save(sale);
    }

    @Transactional
    @Override
    public Sale getCart(final User user) {
        Sale cart = saleRepository.findFirstByBuyerAndStatusOrderById(user, SaleStatus.FORMING);
        if (cart == null) {
            cart = new Sale();
            cart.setBuyer(user);
            cart.setProducts(new ArrayList<>());
            cart.setStatus(SaleStatus.FORMING);
        }
        return cart;
    }

    @Transactional
    @Override
    public List<Sale> getSales() {
        return saleRepository.findAllByOrderByIdAsc();
    }

    @Transactional
    @Override
    public void updateSaleStatus(final Sale sale, final SaleStatus saleStatus) {
        if (saleStatus.equals(SaleStatus.CONFIRMATION)) {
            for (final SaleProduct saleProduct : sale.getProducts()) {
                saleProduct.getSupply().setBalance(saleProduct.getSupply().getBalance() -
                        ((saleProduct.getSupply().getBalance() - saleProduct.getCount() >= 0) ?
                                saleProduct.getCount() :
                                saleProduct.getSupply().getBalance()));
                supplyRepository.save(saleProduct.getSupply());
            }
            sale.setSaleDate(new Date());
        }
        sale.setStatus(saleStatus);
        save(sale);
    }
}
