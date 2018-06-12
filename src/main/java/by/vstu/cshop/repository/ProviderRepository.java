package by.vstu.cshop.repository;

import by.vstu.cshop.model.Provider;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProviderRepository extends JpaRepository<Provider, Long> {

    List<Provider> findAllByOrderByIdAsc();
}
