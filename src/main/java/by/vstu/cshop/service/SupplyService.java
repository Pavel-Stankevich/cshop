package by.vstu.cshop.service;

import by.vstu.cshop.model.Supply;

import java.util.List;

public interface SupplyService {

    void save(final Supply supply);

    void closeSupply(final Long id);

    Supply getSupply(final Long id);

    List<Supply> getSupplies();
}
