package ua.in.hodovka.dao;

import ua.in.hodovka.model.User;

public interface IUserDao extends IItemDao<User> {


    public User getByEmail(String email);
}
