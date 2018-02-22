package ua.in.hodovka.dao;

import ua.in.hodovka.model.User;
import java.util.List;

public interface UserDao extends ItemDao<User>{


    public User getByEmail(String email);
}
