package by.vstu.cshop.repository;

import by.vstu.cshop.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByEmail(final String email);
}
