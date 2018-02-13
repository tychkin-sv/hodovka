package ua.in.hodovka.service;

import ua.in.hodovka.model.User;

import java.util.List;

public interface UserService {
    public void addUser(User book);

    public void updateBook(User book);

    public void removeUser(int id);

    public User getUserById(int id);

    public List<User> listUsers();

}
