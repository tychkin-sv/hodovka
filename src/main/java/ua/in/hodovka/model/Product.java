package ua.in.hodovka.model;


import javax.persistence.*;

@Entity
@Table(name="tbl_products")
public class Product extends Item{
//    @Id
//    @Column(name = "id")
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private long id;
//
//    @Column(name = "name")
//    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "category_id")
    //@ForeignKey()
    private int category_id;


}
