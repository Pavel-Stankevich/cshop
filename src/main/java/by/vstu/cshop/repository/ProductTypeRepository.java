package by.vstu.cshop.repository;

import by.vstu.cshop.model.ProductType;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductTypeRepository extends JpaRepository<ProductType, Long> {

    List<ProductType> findAllByOrderById();
}
