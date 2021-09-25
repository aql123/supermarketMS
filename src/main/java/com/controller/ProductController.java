package com.controller;

import com.entity.Product;
import com.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Resource
    private ProductService service;


    /*@ResponseBody
    @RequestMapping("/queryAll")
    public ModelAndView queryAll(){
        List<Product> list = service.queryAll();

        System.out.println(list);
        ModelAndView mv = new ModelAndView();
        mv.addObject("list",list);
        mv.setViewName("forward:/jsp/productList.jsp");
        return mv;
    }*/
    @ResponseBody
    @RequestMapping("/queryAll")
    public List<Product> queryAll(){
        return service.queryAll();
    }


    @RequestMapping(value = "/updateProduct",method = RequestMethod.POST)
    public String updateProduct(Integer id,String type,String name,
                                Integer price,Long number,String info){
        Product product = new Product(id,type,name,null,price,null,number,info);
        int i = service.updateProduct(product);
        if (i > 0){
            //跳转列表页面
            return "redirect:/jsp/productList.jsp";
        }else return "show";
    }

    @RequestMapping("/insertProduct")
    public String insertProduct(String type,String name,String version,
                                Integer price,Long number,String img,String info){
        Product product = new Product(0,type,name,version,price,img,number,info);
        int i = service.insertProduct(product);
        if (i > 0){
            //跳转列表页面
            return "redirect:/jsp/productList.jsp";
        }else return "show";
    }

    @RequestMapping("/delProduct")
    public String delProduct(Integer id){
        int i = service.delProduct(id);
        if (i > 0){
            //跳转列表页面
            return "redirect:/jsp/productList.jsp";
        }else return "show";
    }

    @ResponseBody
    @RequestMapping("/likeQueryUser")
    public List<Product> likeQueryUser(String name){
        return service.likeQuery(name);
    }
}
