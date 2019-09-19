package com.scu.crazyb.controller;

import com.scu.crazyb.bean.request.User;
import com.scu.crazyb.common.CommonConstants;
import com.scu.crazyb.dao.entity.UserEntity;
import com.scu.crazyb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginJsp(){
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(User user, Model model, HttpSession session){
        UserEntity userEntity = userService.findUserByName(user.getUsername());
        if(userEntity!=null && userEntity.getPassword().equals(user.getPassword()))
        {
            session.setAttribute("USER_SESSION", user);
            return "redirect:main";
        }

        model.addAttribute("msg", CommonConstants.INVALID_USERNAME_OR_PASSWD);
        return "login";
    }

    @RequestMapping(value = "/main")
    public String toMain(){
        return "main";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String userRegisterJsp(){
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String userRegister(User user, Model model){
        if(userService.findUserByName(user.getUsername()) != null)
        {
            model.addAttribute("alreadHaveUser", CommonConstants.ALREADY_REGISTERD);
            return "register";
        }
        userService.insertUser(user);
        return "registerSuccess";
    }
}
