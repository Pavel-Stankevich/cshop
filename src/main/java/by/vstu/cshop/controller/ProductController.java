package by.vstu.cshop.controller;

import by.vstu.cshop.model.ProductType;
import by.vstu.cshop.service.ProductService;
import by.vstu.cshop.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;
    @Autowired
    private ProductTypeService productTypeService;

    @GetMapping("/products.html")
    public String products(@RequestParam(value = "page", required = false, defaultValue = "1") final int page, @RequestParam("productType") final Long productType, final Model model) {
        final ProductType dbProductType = productTypeService.getProductType(productType);
        model.addAttribute("products", productService.getProductsPageByProductType(page, dbProductType));
        model.addAttribute("page", page);
        model.addAttribute("productType", dbProductType);
        return "products";
    }
}
