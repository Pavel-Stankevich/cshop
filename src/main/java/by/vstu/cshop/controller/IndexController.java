package by.vstu.cshop.controller;

import by.vstu.cshop.model.Product;
import by.vstu.cshop.model.Role;
import by.vstu.cshop.model.User;
import by.vstu.cshop.repository.ProductRepository;
import by.vstu.cshop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import sun.misc.IOUtils;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.Map;
import java.util.Optional;
import java.util.Random;

@Controller
public class IndexController {

    @Autowired
    UserRepository userRepository;
    @Autowired
    ProductRepository productRepository;

    @Autowired
    PasswordEncoder passwordEncoder;

    @GetMapping("/startPage.html")
    public String startPage() {
        return "redirect:/index.html";
    }

    @GetMapping("index.html")
    public String index() {
        User user = new User();
        Random r = new Random();
        user.setEmail("test" + r.nextInt(100000) + "@vstu.by");
        user.setPassword(passwordEncoder.encode("test"));
        user.setConfirm(true);
        user.setRole(Role.USER);
        userRepository.save(user);
        System.out.println(userRepository.findAll());
        return "index";
    }

    @GetMapping(value = "/productPhoto.html", produces = MediaType.IMAGE_JPEG_VALUE)
    public @ResponseBody byte[] getImageAsByteArray(@RequestParam("id") final Long id) {
        Optional<Product> product = productRepository.findById(id);
        return product.map(Product::getImg).orElse(null);
    }
}
