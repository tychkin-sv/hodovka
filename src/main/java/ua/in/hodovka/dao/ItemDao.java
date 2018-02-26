package ua.in.hodovka.dao;

import ua.in.hodovka.model.Item;
import java.util.List;

public interface ItemDao <T extends Item>{
    public void add(T item);
    public void update(T item);
    public void remove(int id);
    public T getByID(int id);
    public List<T> getList();

}
