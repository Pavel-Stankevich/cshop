package by.vstu.cshop.controller;

import by.vstu.cshop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.Map;

@Controller
public class IndexController {

    @Autowired
    UserRepository userRepository;

    @GetMapping("/login.html")
    public String login() {
        return "login";
    }

    @GetMapping("/startPage.html")
    public String startPage() {
        return "redirect:/index.html";
    }

    @GetMapping("index.html")
    public String index() {
        System.out.println(userRepository.findAll());
        return "index";
    }
}
