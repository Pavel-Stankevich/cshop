package by.vstu.cshop.controller;

import by.vstu.cshop.service.SaleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SalesController {

    @Autowired
    private SaleService saleService;

    @GetMapping("/seller/sales.html")
    public String sales(final Model model) {
        model.addAttribute("sales", saleService.getSales());
        return "seller/sales";
    }
}
