package by.vstu.cshop.service;

import by.vstu.cshop.model.ProductType;
import by.vstu.cshop.repository.ProductTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class ProductTypeServiceImpl implements ProductTypeService {

    @Autowired
    private ProductTypeRepository productTypeRepository;

    @Transactional
    @Override
    public ProductType getProductType(final Long id) {
        if (id == null) {
            return null;
        }
        Optional<ProductType> productType = productTypeRepository.findById(id);
        return productType.orElse(null);
    }

    @Transactional
    @Override
    public List<ProductType> getProductTypes() {
        return productTypeRepository.findAllByOrderById();
    }
}
