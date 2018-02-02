package ua.in.hodovka.dao;

import org.hibernate.Session;
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
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(user);
        logger.info("User successfully saved. User details: " + user);
    }

    public void updateUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(user);
        logger.info("User successfully update. User details: " + user);
    }


    public void removeUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, new Integer(id));

        if(user!=null){
            session.delete(user);
            logger.info("User successfully removed. User details: " + user);
        } else
        {logger.error("User removed fail. Book details: " + user);}

    }


    public User getUserByID(int id) {
        Session session =this.sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, new Integer(id));
        logger.info("User successfully loaded. User details: " + user);

        return user;
    }

    // without implementation
    public User getUserByEmail(String email) {

        return null;
    }

    @SuppressWarnings("unchecked")
    public List<User> listUser() {
        Session session = this.sessionFactory.getCurrentSession();
        List<User> userList = session.createQuery("from User").list();

        for(User user: userList){
            logger.info("User list: " + user);
        }

        return userList;
    }
}
