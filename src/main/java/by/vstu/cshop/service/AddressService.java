package by.vstu.cshop.service;

import by.vstu.cshop.model.Address;

import java.util.List;

public interface AddressService {

    void save(final Address address);

    Address getAddress(final Long id);

    List<Address> getAddresses();
}
