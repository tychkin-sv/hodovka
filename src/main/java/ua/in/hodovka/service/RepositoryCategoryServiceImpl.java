package ua.in.hodovka.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.in.hodovka.repository.IRepositoryCategoryDao;
import ua.in.hodovka.model.Category;

import java.util.List;

@Service
public class RepositoryCategoryServiceImpl implements ICategoryService {

    @Autowired
    /*@Qualifier(value = "")*/
    IRepositoryCategoryDao itemDao;

    public void setItemDao(IRepositoryCategoryDao itemDao) {
        this.itemDao = itemDao;
    }

    @Transactional
    public void add(Category item) {
        this.itemDao.save(item);
    }

    @Transactional
    public void update(Category item) {
        this.itemDao.save(item);
    }

    @Transactional
    public void remove(int id) {
        this.itemDao.delete(id);
    }

    @Transactional
    public Category getById(int id) {
        return this.itemDao.findOne(id);
    }

    @Transactional
    public List<Category> getList() {
        return (List<Category>) this.itemDao.findAll();
    }
}
