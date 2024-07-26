package productCrud.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import productCrud.entity.Product;

import javax.transaction.Transactional;
import java.util.List;

@Component
public class ProductDAO {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void createProduct(Product product){
        this.hibernateTemplate.save(product);
    }

    public List<Product> getAllProducts(){
        return this.hibernateTemplate.loadAll(Product.class);
    }
    public Product getProduct(int id){
//      return this.hibernateTemplate.load(Product.class, id);
        return this.hibernateTemplate.get(Product.class, id);
    }
    @Transactional
    public Object updateProduct(Product product){
        this.hibernateTemplate.update(product);
        return null;
    }
    @Transactional
    public void deleteProduct(int id){
        Product product = this.hibernateTemplate.load(Product.class, id);
        this.hibernateTemplate.delete(product);
    }
}
