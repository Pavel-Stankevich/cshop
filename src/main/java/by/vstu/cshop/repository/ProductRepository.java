package by.vstu.cshop.repository;

import by.vstu.cshop.model.Product;
import by.vstu.cshop.model.ProductType;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {

    List<Product> findAllByOrderById();

    Page<Product> findAllByProductType(final ProductType productType, final Pageable pageable);
}
