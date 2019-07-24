package service;

import model.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();
    void save(Product product);
    void update(int id, Product product);
    void delete(int id);
    List<Product> seach(String name);
    Product view(int id);
}
