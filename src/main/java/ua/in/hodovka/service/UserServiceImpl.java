package ua.in.hodovka.service;

import ua.in.hodovka.dao.UserDao;
import ua.in.hodovka.model.User;

import java.util.List;

public class UserServiceImpl implements UserService {
    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }


    public void addUser(User book) {

    }

    public void updateBook(User book) {

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
