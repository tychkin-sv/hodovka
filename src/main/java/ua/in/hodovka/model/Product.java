package ua.in.hodovka.model;


import javax.persistence.*;

@Entity
@Table(name="tbl_products")
public class Product {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

}
