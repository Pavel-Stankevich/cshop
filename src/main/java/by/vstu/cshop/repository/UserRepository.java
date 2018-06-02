package by.vstu.cshop.repository;

import by.vstu.cshop.model.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {

}
