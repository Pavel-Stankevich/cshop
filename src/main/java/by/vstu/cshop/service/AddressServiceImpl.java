package by.vstu.cshop.service;

import by.vstu.cshop.model.Address;
import by.vstu.cshop.repository.AddressRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class AddressServiceImpl implements AddressService {

    @Autowired
    private AddressRepository addressRepository;

    @Transactional
    @Override
    public void save(final Address address) {
        addressRepository.save(address);
    }

    @Transactional
    @Override
    public Address getAddress(final Long id) {
        if (id == null) {
            return null;
        }
        return addressRepository.findById(id).orElse(null);
    }

    @Transactional
    @Override
    public List<Address> getAddresses() {
        return addressRepository.findAll();
    }
}
