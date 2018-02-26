package ua.in.hodovka.service;

import org.springframework.transaction.annotation.Transactional;
import ua.in.hodovka.dao.CategoryDao;
import ua.in.hodovka.model.Category;

import java.util.List;

public class CategoryServiceImpl implements CategoryService {
    private CategoryDao itemDao;

    public void setItemDao(CategoryDao itemDao) {
        this.itemDao = itemDao;
    }

    @Override
    @Transactional
    public void add(Category item) {
        this.itemDao.add(item);
    }

    @Override
    @Transactional
    public void update(Category item) {
        this.itemDao.update(item);
    }

    @Override
    @Transactional
    public void remove(int id) {
        this.itemDao.remove(id);
    }

    @Override
    @Transactional
    public Category getById(int id) {
        return this.itemDao.getByID(id);
    }

    @Override
    @Transactional
    public List<Category> getList() {
        return this.itemDao.getList();
    }
}
