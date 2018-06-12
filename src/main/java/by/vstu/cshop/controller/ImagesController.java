package by.vstu.cshop.controller;

import by.vstu.cshop.model.Product;
import by.vstu.cshop.model.ProductType;
import by.vstu.cshop.service.ProductService;
import by.vstu.cshop.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ImagesController {

    @Autowired
    private ProductTypeService productTypeService;
    @Autowired
    private ProductService productService;

    @Transactional
    @GetMapping(value = "/images/productPhoto.html", produces = MediaType.IMAGE_PNG_VALUE)
    public byte[] productPhoto(@RequestParam("id") final Long id) {
        Product product = productService.getProduct(id);
        return product == null ? null : product.getImg();
    }

    @Transactional
    @GetMapping(value = "/images/productTypePhoto.html", produces = MediaType.IMAGE_PNG_VALUE)
    public byte[] productTypePhoto(@RequestParam("id") final Long id) {
        ProductType productType = productTypeService.getProductType(id);
        return productType == null ? null : productType.getImg();
    }
}
