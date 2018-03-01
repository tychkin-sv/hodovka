package ua.in.hodovka.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import ua.in.hodovka.model.Product;

import java.util.List;

@Repository
public class ProductDaoImpl implements IProductDao {
    //Для логирования
    private static final Logger logger = LoggerFactory.getLogger(ProductDaoImpl.class);
    private SessionFactory sessionFactory;
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    @Override
    public void add(Product product) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(product);
        logger.info("Product successfully saved. User details: " + product);
    }

    @Override
    public void update(Product product) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(product);
        logger.info("Product successfully update. User details: " + product);
    }

    @Override
    public void remove(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Product product = (Product) session.load(Product.class, new Integer(id));

        if(product!=null){
            session.delete(product);
            logger.info("Product successfully removed. User details: " + product);
        } else
        {logger.error("Product removed fail. Product details: " + product);}
    }

    @Override
    public Product getByID(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Product product = (Product) session.load(Product.class, new Integer(id));
        logger.info("Product successfully loaded. Product details: " + product);
        return product;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Product> getList() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Product> productList = session.createQuery("from Product").list();

        for(Product product: productList){
            logger.info("Product list: " + product);
        }

        return productList;
     }
}
