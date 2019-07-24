package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "LG-9000", 5000, "Điều Hòa", "LG Electronics"));
        products.put(2, new Product(2, "iphone X", 9999, "Điện Thoại", "Apple Inc"));
        products.put(3, new Product(3, "Sharp ES-U72GV-H", 8000, "Máy Giặt", "Thái Lan"));
        products.put(4, new Product(4, "huawei SX", 7000, "Điện Thoại", "HuaWei"));
        products.put(5, new Product(5, "LG-elex", 5000, "Điều Hòa", "LG Electronics"));
        products.put(6, new Product(6, "iphone SE", 999, "Điện Thoại", "Apple Inc"));
        products.put(7, new Product(7, "samsumg", 4000, "Máy Giặt", "vietnames"));
        products.put(8, new Product(8, "Sony", 5000, "Tivi", "USA"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void delete(int id) {
        products.remove(id);
    }

    @Override
    public List<Product> seach(String name) {
        List<Product> filterList = new ArrayList<>();
        if(name.trim().isEmpty()){
            throw new RuntimeException("ko duoc bo trong");
        }
        for (Product i : products.values()) {
            if (i.getName().toLowerCase().contains(name.trim().toLowerCase())) {
                filterList.add(i);
            }
        }
        return filterList;
    }
    @Override
    public Product view(int id) {
        return products.get(id);
    }
}
