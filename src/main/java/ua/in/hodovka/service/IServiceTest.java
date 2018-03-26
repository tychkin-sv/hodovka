package ua.in.hodovka.service;

import ua.in.hodovka.model.ItemModelTest;

import java.util.List;

public interface IServiceTest {
    public void add(ItemModelTest item);

    public void update(ItemModelTest item);

    public void delete(long id);

    public ItemModelTest getById(long id);

    public List<ItemModelTest> getList();
}
