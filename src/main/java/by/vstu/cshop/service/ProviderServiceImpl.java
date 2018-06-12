package by.vstu.cshop.service;

import by.vstu.cshop.model.Provider;
import by.vstu.cshop.repository.ProviderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class ProviderServiceImpl implements ProviderService {

    @Autowired
    private ProviderRepository providerRepository;

    @Override
    public void save(final Provider provider) {
        providerRepository.save(provider);
    }

    @Transactional
    @Override
    public Provider getProvider(final Long id) {
        if(id == null) {
            return null;
        }
        Optional<Provider> provider = providerRepository.findById(id);
        return provider.orElse(null);
    }

    @Transactional
    @Override
    public List<Provider> getProviders() {
        return providerRepository.findAllByOrderByIdAsc();
    }
}
