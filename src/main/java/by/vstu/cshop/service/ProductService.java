package by.vstu.cshop.service;

import by.vstu.cshop.model.Product;
import by.vstu.cshop.model.ProductType;
import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface ProductService {

    void save(final Product product);

    Product getProduct(final Long id);

    List<Product> getProducts();

    Page<Product> getProductsPage(final int page);

    Page<Product> getProductsPageByProductType(int page, ProductType productType);
}
