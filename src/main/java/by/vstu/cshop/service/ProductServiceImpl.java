package by.vstu.cshop.service;

import by.vstu.cshop.model.Product;
import by.vstu.cshop.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Override
    public void save(final Product product) {
        productRepository.save(product);
    }

    @Override
    public Product getProduct(final Long id) {
        Optional<Product> product = productRepository.findById(id);
        return product.orElse(null);
    }

    @Override
    public List<Product> getProducts() {
        return null;
    }
}
