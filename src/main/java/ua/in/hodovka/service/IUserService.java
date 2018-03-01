package ua.in.hodovka.service;

import ua.in.hodovka.model.User;

import java.util.List;

public interface IUserService {
    public void add(User user);

    public void update(User user);

    public void remove(int id);

    public User getById(int id);

    public List<User> getList();

}
