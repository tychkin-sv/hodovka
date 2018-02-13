package ua.in.hodovka.model;

import javax.persistence.*;

@Entity
@Table(name="tbl_comments")
public class Comment {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

}
