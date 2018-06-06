package by.vstu.cshop.controller;

import by.vstu.cshop.model.Role;
import by.vstu.cshop.model.User;
import by.vstu.cshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.util.ArrayList;

@Controller
public class SecurityController {

    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/registration")
    public String registrationGet() {
        return "registration";
    }

    @PostMapping("/registration")
    public String registrationPost(@ModelAttribute("user") @Valid final User user, final BindingResult result, final Model model) {
        System.out.println(user);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setRole(Role.USER);
        user.getPerson().setAddresses(new ArrayList<>());
        userService.save(user);
        System.out.println(userService.getUsers());
        return "registration";
    }
}
