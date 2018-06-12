package by.vstu.cshop.service;

import by.vstu.cshop.model.Sale;
import by.vstu.cshop.model.SaleStatus;
import by.vstu.cshop.model.User;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface SaleService {

    void save(Sale sale);

    Sale getCart(User user);

    List<Sale> getSales();

    void updateSaleStatus(final Sale sale, final SaleStatus saleStatus);
}
