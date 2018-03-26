package ua.in.hodovka.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import ua.in.hodovka.model.Category;

import java.util.List;

@Repository
public class CategoryDaoImpl implements ICategoryDao {
    //Для логирования
    private static final Logger logger = LoggerFactory.getLogger(CategoryDaoImpl.class);

    private SessionFactory sessionFactory;
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void add(Category item) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(item);
        logger.info("Category successfully saved. Category details: " + item);
    }

    @Override
    public void update(Category item) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(item);
        logger.info("Category successfully update. Category details: " + item);
    }

    @Override
    public void remove(long id) {
        Session session = this.sessionFactory.getCurrentSession();
        Category item = (Category) session.load(Category.class, new Long(id));
        if(item!=null){
            session.delete(item);
            logger.info("Category successfully removed. Category details: " + item);
        } else
        {logger.error("Category removed fail. Category details: " + item);}
    }

    @Override
    public Category getByID(long id) {
        Session session =this.sessionFactory.getCurrentSession();
        Category item = (Category) session.load(Category.class, new Long(id));
        logger.info("Category successfully loaded. Category details: " + item);
        return item;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Category> getList() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Category> categoryList = session.createQuery("from Category").list();

        for(Category item: categoryList){
            logger.info("Category list: " + item);
        }
        return categoryList;
    }
}
