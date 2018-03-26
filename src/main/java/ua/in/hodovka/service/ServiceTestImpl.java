package ua.in.hodovka.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import ua.in.hodovka.dao.IDaoTest;
import ua.in.hodovka.model.ItemModelTest;

import java.util.List;

@Service
public class ServiceTestImpl implements IServiceTest{

    @Autowired
    @Qualifier(value = "daoTest")
    IDaoTest itemDao;

    @Override
    public void add(ItemModelTest item) {
        itemDao.add(item);
    }

    @Override
    public void update(ItemModelTest item) {
        itemDao.update(item);
    }

    @Override
    public void delete(long id) {
        itemDao.delete(id);
    }

    @Override
    public ItemModelTest getById(long id) {
        return itemDao.getItem(id);
    }

    @Override
    public List<ItemModelTest> getList() {
        return itemDao.getList();
    }
}
