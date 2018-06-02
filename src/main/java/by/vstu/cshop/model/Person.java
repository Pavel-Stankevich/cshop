package by.vstu.cshop.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table
public class Person {

    @Id
    private Long id;
    private String name;
    private String surname;
    private String patronymic;
    private Date birthday;
    private String phoneNumber;
    @ManyToMany
    private List<Address> addresses;
}
