package ua.in.hodovka.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ua.in.hodovka.model.Category;

@Repository
public interface IRepositoryCategoryDao extends CrudRepository<Category, Integer> {

}
