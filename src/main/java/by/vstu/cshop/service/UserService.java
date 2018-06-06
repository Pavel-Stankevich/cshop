package by.vstu.cshop.service;

import by.vstu.cshop.model.User;

import java.util.List;

public interface UserService {

    void save(final User user);

    User getUser(final Long id);

    User getUserByEmail(final String email);

    List<User> getUsers();
}
