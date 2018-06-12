package by.vstu.cshop.service;

import by.vstu.cshop.model.User;
import by.vstu.cshop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Transactional
    @Override
    public void save(final User user) {
        userRepository.save(user);
    }

    @Transactional
    @Override
    public User getUser(final Long id) {
        return userRepository.findById(id).get();
    }

    @Transactional
    @Override
    public User getUserByEmail(final String email) {
        return userRepository.findByEmail(email);
    }

    @Transactional
    @Override
    public List<User> getUsers() {
        return userRepository.findAll();
    }
}
