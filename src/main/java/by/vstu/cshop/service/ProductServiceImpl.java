package by.vstu.cshop.service;

import by.vstu.cshop.model.Product;
import by.vstu.cshop.model.ProductType;
import by.vstu.cshop.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    private static final int PAGE_SIZE = 10;

    @Autowired
    private ProductRepository productRepository;

    @Transactional
    @Override
    public void save(final Product product) {
        productRepository.save(product);
    }

    @Transactional
    @Override
    public Product getProduct(final Long id) {
        if (id == null) {
            return null;
        }
        return productRepository.findById(id).orElse(null);
    }

    @Transactional
    @Override
    public List<Product> getProducts() {
        return productRepository.findAllByOrderById();
    }

    @Transactional
    @Override
    public Page<Product> getProductsPage(final int page) {
        return productRepository.findAll(PageRequest.of(page - 1, PAGE_SIZE, Sort.Direction.ASC, "id", "supply.count", "supply.price"));
    }

    @Transactional
    @Override
    public Page<Product> getProductsPageByProductType(final int page, final ProductType productType) {
        return productRepository.findAllByProductType(productType, PageRequest.of(page - 1, PAGE_SIZE, Sort.Direction.ASC, "id", "supplies.price"));
    }
}
