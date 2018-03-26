package ua.in.hodovka.dao;

import org.springframework.stereotype.Repository;
import ua.in.hodovka.model.ItemModelTest;

import java.util.ArrayList;
import java.util.List;

@Repository
public class DaoTestImpl implements IDaoTest {
    private List<ItemModelTest> items = new ArrayList<>();
    private static long num;
    {
        items.add(new ItemModelTest(1L, "Сергей", 36));
        items.add(new ItemModelTest(2L, "Вика", 32));
        items.add(new ItemModelTest(3L, "Сергей", 8));
        num=items.size();
        System.out.println("size = " + items.size());
    }

    @Override
    public void add(ItemModelTest item) {
        item.setId(++num);
        items.add(item);
    }

    @Override
    public void delete(long id) {
        int needTodelete = 0;
        boolean found = false;
        for (ItemModelTest item: items){

            if (item.getId()==id){
                found = true;
                break;
            }
            needTodelete++;
        }
        if (found) items.remove(needTodelete);
    }

    @Override
    public void update(ItemModelTest itemToUpdate) {
        int needToUpdate = 0;
        boolean found = false;
        for (ItemModelTest item: items){

            if (item.getId()==itemToUpdate.getId()){
                found = true;
                break;
            }
            needToUpdate++;
        }
        if (found) items.set(needToUpdate, itemToUpdate);
    }

    @Override
    public ItemModelTest getItem(long id) {
      for (ItemModelTest item: items){
          if (item.getId()==id) return item;
      }
      return null;
    }

    @Override
    public List<ItemModelTest> getList() {
        return items;
    }
}
