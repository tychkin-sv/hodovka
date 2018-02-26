package ua.in.hodovka.service;

import ua.in.hodovka.model.Category;

import java.util.List;

public interface CategoryService {
    public void add(Category item);

    public void update(Category item);

    public void remove(int id);

    public Category getById(int id);

    public List<Category> getList();
}
