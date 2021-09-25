package com.controller;

import com.entity.User;
import com.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService service;

    @RequestMapping(value = "/userLogin" ,method = RequestMethod.POST)
    public ModelAndView userLogin(String username, String password, HttpServletRequest request){
        String tips = "登录失败";
        ModelAndView mv = new ModelAndView();
        //调用service层验证登录
        User user = service.selectUserByPassword(username, password);

        if (user == null){
            mv.addObject("tips",tips);
            mv.setViewName("show");
        }else {
            request.getSession().setAttribute("user",user);
            mv.setViewName("redirect:/jsp/userList.jsp");
        }
        return mv;
    }
    @RequestMapping(value = "/userRegister" ,method = RequestMethod.POST)
    public ModelAndView userRegister(String username,String password,String confirmPassword){
        String tips = "注册失败";
        ModelAndView mv = new ModelAndView();
        int num = 0;
        if(password.equals(confirmPassword)){
            //调用service用户注册
            num = service.insertUser(username.trim(),password.trim());
        }else {
            tips = "注册失败，两次密码不一致！";
            mv.addObject("tips",tips);
            mv.setViewName("show");
        }
        if (num == 0){
            mv.addObject("tips",tips);
            mv.setViewName("show");
        }else {
            mv.setViewName("redirect:/login.jsp");
        }
        return mv;
    }

    @ResponseBody
    @RequestMapping(value = "/userList")
    public List<User> userList(){
        return service.selectAllUsers();
    }

    @ResponseBody
    @RequestMapping(value = "/likeQueryUser" ,method = RequestMethod.GET)
    public List<User> queryUsers(String name){
        //调用service层，查询所有数据
        return service.queryLikeUser(name);
    }


    @RequestMapping(value = "/updateUser")
    public ModelAndView updateUser(Integer id,String name,String sex,Integer age,
                                   String phone,String address,String type){
        ModelAndView mv = new ModelAndView();
        User user = new User(id,name,null,null,
                sex,age,phone,type,address);

        String tips = "更新失败！";
        //调用service层，更新数据
        int num = service.updateUser(user);
        if (num == 0){
            mv.addObject("tips",tips);
            mv.setViewName("show");
        }else {
            mv.setViewName("redirect:/jsp/userList.jsp");
        }
        return mv;
    }

    @RequestMapping(value = "/delUser" ,method = RequestMethod.GET)
    public ModelAndView delUser(Integer id){
        ModelAndView mv = new ModelAndView();
        String tips = "删除失败！";
        int num = service.delUser(id);
        if (num == 0){
            mv.addObject("tips",tips);
            mv.setViewName("show");
        }else {
            mv.setViewName("redirect:/jsp/userList.jsp");
        }
        return mv;
    }


    @RequestMapping(value = "/addUser" ,method = RequestMethod.POST)
    public ModelAndView addUser(String name,String username,String password,String userRemi,
                                String sex,Integer age,String phone,String address,String type) {
        ModelAndView mv = new ModelAndView();
        String tips = "添加失败,密码不一致！";
        int num = 0;
        User user = null;
        if (password.equals(userRemi)) {
            user = new User(null,name,username,password,sex,age,phone,type,address);
            //调用service层，添加数据
            num = service.addUser(user);
        }
        if (num == 0) {
            mv.addObject("tips", tips);
            mv.setViewName("show");
        } else {
            mv.setViewName("redirect:/jsp/userList.jsp");
        }
        return mv;
    }

    @RequestMapping(value = "/updatePassword" ,method = RequestMethod.POST)
    public ModelAndView updatePassword(Integer id,String oldPassword,String newPassword,String reNewPassword){
        ModelAndView mv = new ModelAndView();
        String tips = "";
        int result = 0;

        if (reNewPassword != null && newPassword != null){
            if (reNewPassword.equals(newPassword)){
                //调用service层修改密码
                result = service.updatePassword(id, oldPassword, newPassword);
                if (result != 0){
                    mv.setViewName("redirect:/login.jsp");
                }else {
                    tips = "密码不正确！";
                    mv.setViewName("show");
                }
            }else {
                tips = "两次密码不一致！";
                mv.setViewName("show");
            }
            mv.addObject("tips",tips);
        }
        return mv;
    }

}
