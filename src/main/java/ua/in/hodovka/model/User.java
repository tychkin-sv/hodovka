package ua.in.hodovka.model;

import javax.persistence.*;


@Entity
@Table(name = "tbl_users")
public class User extends Item{
//   @Id
//   @Column(name = "id")
//   @GeneratedValue(strategy = GenerationType.IDENTITY)
//   private long id;
    private static final long serialVersionUID = -5527566248002296042L;

    @Column(name = "username")
    private String username;

    @Column(name = "password")
    private String password;

    @Column(name = "surname")
    private String surname;

//   @Column(name = "name")
//   private String name;

    @Column(name = "secondname")
    private String secondname;

    @Column(name = "email")
    private String email;

    @Column(name = "spare1")
    private String spare1;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getSecondname() {
        return secondname;
    }

    public void setSecondname(String secondname) {
        this.secondname = secondname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSpare1() {
        return spare1;
    }

    public void setSpare1(String spare1) {
        this.spare1 = spare1;
    }

//    public long getId() {
//        return id;
//    }
//
//    public void setId(long id) {
//        this.id = id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + getId() +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", surname='" + surname + '\'' +
                ", name='" + getName() + '\'' +
                ", secondname='" + secondname + '\'' +
                ", email='" + email + '\'' +
                ", spare1='" + spare1 + '\'' +
                '}';
    }
}
