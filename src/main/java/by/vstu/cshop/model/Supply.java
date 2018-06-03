package by.vstu.cshop.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.math.BigInteger;

@Data
@Entity
@Table
public class Supply {

    @Id
    @GeneratedValue
    private Long id;

    @ManyToOne
    @JoinColumn(nullable = false)
    private Provider provider;

    @ManyToOne
    @JoinColumn(nullable = false)
    private Product product;

    @Column(nullable = false, precision=10, scale=2)
    private BigInteger supplyPrice;

    @Column(nullable = false, precision=10, scale=2)
    private BigInteger price;

    @Column(nullable = false)
    private Integer count;

    @Column(nullable = false)
    private Integer balance;
}
