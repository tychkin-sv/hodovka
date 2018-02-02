package ua.in.hodovka.dao;

import ua.in.hodovka.model.User;

import java.util.List;

public interface UserDao {

    public void addUser(User user);
    public void updateUser(User user);
    public void removeUser(int id);
    public User getUserByID(int id);
    public User getUserByEmail(String email);
    public List<User> listUser();


}
