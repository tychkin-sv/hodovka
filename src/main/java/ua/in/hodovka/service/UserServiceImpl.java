package ua.in.hodovka.service;

import ua.in.hodovka.model.User;
import ua.in.hodovka.dao.UserDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    private UserDao itemDao;

    public void setItemDao(UserDao itemDao) {
        this.itemDao = itemDao;
    }

    @Override
    @Transactional
    public void addUser(User user) {
        this.itemDao.add(user);
    }

    @Override
    @Transactional
    public void updateUser(User user) {
        this.itemDao.update(user);
    }

    @Override
    @Transactional
    public void removeUser(int id) {
        this.itemDao.remove(id);
    }

    @Override
    @Transactional
    public User getUserById(int id) {
        return this.itemDao.getByID(id);
    }

    @Override
    @Transactional
    public List<User> listUsers() {
        return this.itemDao.getList();
    }
}
