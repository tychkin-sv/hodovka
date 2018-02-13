package ua.in.hodovka.service;

import ua.in.hodovka.model.User;
import ua.in.hodovka.dao.UserDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    @Transactional
    public void addUser(User user) {
        this.userDao.addUser(user);
    }

    @Override
    @Transactional
    public void updateUser(User user) {

    }

    public void removeUser(int id) {

    }

    public User getUserById(int id) {
        return null;
    }

    public List<User> listUsers() {
        return null;
    }
}
