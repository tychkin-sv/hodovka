package ua.in.hodovka.model;

import javax.persistence.*;

@Entity
@Table(name="tbl_orders")
public class Order {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

}
