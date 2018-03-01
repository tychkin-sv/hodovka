package ua.in.hodovka.service;

import ua.in.hodovka.model.User;
import ua.in.hodovka.dao.IUserDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements IUserService {
    private IUserDao itemDao;

    public void setItemDao(IUserDao itemDao) {
        this.itemDao = itemDao;
    }

    @Override
    @Transactional
    public void add(User user) {
        this.itemDao.add(user);
    }

    @Override
    @Transactional
    public void update(User user) {
        this.itemDao.update(user);
    }

    @Override
    @Transactional
    public void remove(int id) {
        this.itemDao.remove(id);
    }

    @Override
    @Transactional
    public User getById(int id) {
        return this.itemDao.getByID(id);
    }

    @Override
    @Transactional
    public List<User> getList() {
        return this.itemDao.getList();
    }
}
