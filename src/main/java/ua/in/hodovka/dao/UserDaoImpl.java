package ua.in.hodovka.dao;

import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import ua.in.hodovka.model.User;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {
    //Для логирования
    private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    public void addUser(User user) {

    }

    public void updateUser(User user) {

    }


    public void removeUser(int id) {

    }


    public User getUserByID(int id) {
        return null;
    }

    public List<User> listUser() {
        return null;
    }
}
