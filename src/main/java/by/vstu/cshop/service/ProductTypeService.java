package by.vstu.cshop.service;

import by.vstu.cshop.model.ProductType;

import java.util.List;

public interface ProductTypeService {

    ProductType getProductType(final Long id);

    List<ProductType> getProductTypes();
}
