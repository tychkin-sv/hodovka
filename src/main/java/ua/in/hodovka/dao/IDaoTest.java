package ua.in.hodovka.dao;

import ua.in.hodovka.model.ItemModelTest;

import java.util.List;

public interface IDaoTest {

    void add(ItemModelTest item);
    void delete(long id);
    void update(ItemModelTest item);
    ItemModelTest getItem(long id);
    List<ItemModelTest> getList();
}
