package ua.in.hodovka.dao;

import ua.in.hodovka.model.Item;
import java.util.List;

public interface IItemDao<T extends Item>{
    public void add(T item);
    public void update(T item);
    public void remove(long id);
    public T getByID(long id);
    public List<T> getList();

}
