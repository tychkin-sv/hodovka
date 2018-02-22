package ua.in.hodovka.model;

import javax.persistence.*;

@Entity
@Table(name="tbl_comments")
public class Comment extends Item {
    int user_id;

}
