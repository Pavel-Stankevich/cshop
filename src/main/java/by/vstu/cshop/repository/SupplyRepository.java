package by.vstu.cshop.repository;

import by.vstu.cshop.model.Supply;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SupplyRepository extends JpaRepository<Supply, Long> {

    List<Supply> findAllByOrderByIdDesc();
}
