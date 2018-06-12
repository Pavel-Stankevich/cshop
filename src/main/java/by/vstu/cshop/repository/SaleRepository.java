package by.vstu.cshop.repository;

import by.vstu.cshop.model.Sale;
import by.vstu.cshop.model.SaleStatus;
import by.vstu.cshop.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SaleRepository extends JpaRepository<Sale, Long> {

    Sale findFirstByBuyerAndStatusOrderById(final User buyer, final SaleStatus status);

    List<Sale> findAllByOrderByIdAsc();
}
