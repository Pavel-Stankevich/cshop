package by.vstu.cshop.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Entity
@Table
public class Address {

    @Id
    @GeneratedValue
    private Long id;

    @Column(nullable = false)
    private String fio;

    @Column(nullable = false)
    private String phoneNumber;

    @Column(nullable = false)
    private String region;

    @Column(nullable = false)
    private String city;

    @Column(nullable = false)
    private String address;

    @Column(nullable = false)
    private String postcode;
}
