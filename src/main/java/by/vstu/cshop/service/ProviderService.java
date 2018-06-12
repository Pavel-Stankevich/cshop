package by.vstu.cshop.service;

import by.vstu.cshop.model.Provider;

import java.util.List;

public interface ProviderService {

    void save(final Provider provider);

    Provider getProvider(final Long id);

    List<Provider> getProviders();
}
