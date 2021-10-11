package repository.impl;

import entity.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepositoryImpl {
    static List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product(101,"iphone X", 8000000, "đien thoai the he moi", "apple"));
        productList.add(new Product(102,"iphone 11", 10000000, "đien thoai the he moi", "apple"));
        productList.add(new Product(103,"iphone 11 pro", 14000000, "đien thoai the he moi", "apple"));
        productList.add(new Product(104,"iphone 11 pro max", 16000000, "đien thoai the he moi", "apple"));
        productList.add(new Product(105,"iphone 12", 18000000, "đien thoai the he moi", "apple"));
        productList.add(new Product(106,"iphone 12 pro", 2000000, "đien thoai the he moi", "apple"));
        productList.add(new Product(107,"iphone 12 pro max", 22000000, "đien thoai the he moi", "apple"));
    }
}
