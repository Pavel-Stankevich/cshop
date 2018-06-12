package by.vstu.cshop.service;

import by.vstu.cshop.model.Supply;
import by.vstu.cshop.repository.SupplyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

@Service
public class SupplyServiceImpl implements SupplyService {

    @Autowired
    private SupplyRepository supplyRepository;
    private static final BigDecimal NDS = new BigDecimal("1.20");
    private static final BigDecimal PROFIT = new BigDecimal("1.35");

    @Transactional
    @Override
    public void save(final Supply supply) {
        if (supply.isClose()) {
            return;
        }
        supply.setBalance(supply.getCount());
        supply.setPrice(supply.getSupplyPrice().multiply(PROFIT).multiply(NDS));
        supplyRepository.save(supply);
    }

    @Transactional
    @Override
    public void closeSupply(final Long id) {
        final Supply supply = getSupply(id);
        supply.setClose(true);
        supplyRepository.save(supply);
    }

    @Transactional
    @Override
    public Supply getSupply(final Long id) {
        if (id == null) {
            return null;
        }
        Optional<Supply> supply = supplyRepository.findById(id);
        return supply.orElse(null);
    }

    @Transactional
    @Override
    public List<Supply> getSupplies() {
        return supplyRepository.findAllByOrderByIdDesc();
    }
}
