package ua.in.hodovka.model;


import javax.persistence.*;

/**
 * Entity class for Product in DB
 * @author Serhii Tychkin
 * @version 1.0
 */
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

    private static final long serialVersionUID = -5527566248002296042L;

    @Column(name = "description")
    private String description;

    @Column(name="img_source")
    private String img_source;

    @Column(name = "category_id")
    //@ForeignKey()
    private int category_id;
}
