package by.vstu.cshop.model;

import lombok.Data;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table
public class Sale {

    @Id
    @GeneratedValue
    private Long id;

    @ManyToOne
    @JoinColumn(nullable = false)
    private User seller;

    @ManyToOne
    @JoinColumn(nullable = false)
    private User buyer;

    @ManyToOne
    @JoinColumn(nullable = false)
    private Address address;

    @ManyToMany(cascade = CascadeType.ALL)
    private List<SaleProduct> products;


    @Enumerated(EnumType.ORDINAL)
    @Column(nullable = false)
    private SaleStatus status;

    private Date saleDate;

    private Date lastUpdateDate;
}
