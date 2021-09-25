package com.mapper;

import com.entity.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductMapper {
    List<Product> selectAll();
    int updateProduct(Product product);
    int insertProduct(Product product);
    int delProduct(@Param("id") Integer id);
    List<Product> likeQuery(@Param("name") String name);
}
