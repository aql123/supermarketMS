package com.service.impl;

import com.entity.Product;
import com.mapper.ProductMapper;
import com.service.ProductService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Resource
    private ProductMapper mapper;

    @Override
    public List<Product> queryAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateProduct(Product product) {
        return mapper.updateProduct(product);
    }

    @Override
    public int insertProduct(Product product) {
        return mapper.insertProduct(product);
    }

    @Override
    public int delProduct(Integer id) {
        return mapper.delProduct(id);
    }

    @Override
    public List<Product> likeQuery(String name) {
        return mapper.likeQuery(name);
    }
}
