package by.vstu.cshop.service;

import by.vstu.cshop.model.Product;

import java.util.List;

public interface ProductService {

    void save(final Product product);

    Product getProduct(final Long id);

    List<Product> getProducts();
}
