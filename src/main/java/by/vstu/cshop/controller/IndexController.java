package by.vstu.cshop.controller;

import by.vstu.cshop.model.Role;
import by.vstu.cshop.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @Autowired
    private ProductTypeService productTypeService;

    @GetMapping("/startPage.html")
    public String startPage(final Authentication auth) {
        if (auth == null || auth.getAuthorities().isEmpty() || auth.getAuthorities().contains(new SimpleGrantedAuthority(Role.USER.toString()))) {
            return "redirect:/index.html";
        }
        if (auth.getAuthorities().contains(new SimpleGrantedAuthority(Role.SELLER.toString()))) {
            return "redirect:/seller/sales.html";
        }
        if (auth.getAuthorities().contains(new SimpleGrantedAuthority(Role.MERCHANT.toString()))) {
            return "redirect:/merchant/supplies.html";
        }
        return "redirect:/index.html";
    }

    @GetMapping("/")
    public String home() {
        return "redirect:/startPage.html";
    }

    @GetMapping("/index.html")
    public String index(final Model model) {
        model.addAttribute("productTypes", productTypeService.getProductTypes());
        return "index";
    }
}
