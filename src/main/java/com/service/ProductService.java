package com.service;

import com.entity.Product;

import java.util.List;

public interface ProductService {
    List<Product> queryAll();
    int updateProduct(Product product);
    int insertProduct(Product product);
    int delProduct(Integer id);
    List<Product> likeQuery(String name);
}
