package by.vstu.cshop.controller;

import by.vstu.cshop.model.Product;
import by.vstu.cshop.model.Provider;
import by.vstu.cshop.service.ProductService;
import by.vstu.cshop.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.IOException;

@Controller
public class MerchantProductController {

    @Autowired
    private ProductService productService;
    @Autowired
    private ProductTypeService productTypeService;

    @GetMapping("/merchant/products.html")
    public String products(final Model model) {
        model.addAttribute("products", productService.getProducts());
        return "merchant/products";
    }

    @GetMapping("/merchant/editProduct.html")
    public String editProductGet(@RequestParam(name = "id", required = false) final Long id, final Model model) {
        model.addAttribute("productTypes", productTypeService.getProductTypes());
        model.addAttribute("product", productService.getProduct(id));
        return "merchant/editProduct";
    }

    @PostMapping("/merchant/editProduct.html")
    public String editProductPost(@ModelAttribute("product") @Valid final Product product, @RequestParam("file") final MultipartFile img, final BindingResult result) throws IOException {
        Product oldProduct = productService.getProduct(product.getId());
        if(oldProduct != null && (img == null || img.isEmpty())) {
            product.setImg(oldProduct.getImg());
        } else {
            product.setImg(img.getBytes());
        }
        productService.save(product);
        return "redirect:/merchant/products.html";
    }
}
