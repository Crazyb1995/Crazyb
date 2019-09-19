package com.scu.crazyb.service.impl;

import com.scu.crazyb.bean.request.User;
import com.scu.crazyb.dao.UserDao;
import com.scu.crazyb.dao.entity.UserEntity;
import com.scu.crazyb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public void insertUser(User user) {
        UserEntity userEntity = new UserEntity();
        userEntity.setEmail(user.getEmail());
        userEntity.setLastLogin(null);
        userEntity.setPassword(user.getPassword());
        userEntity.setRegisterTime(new Date());
        userEntity.setPhone(user.getPhone());
        userEntity.setSex(user.getSex());
        userEntity.setUsername(user.getUsername());
        userDao.insertUser(userEntity);
    }

    @Override
    public UserEntity findUserByName(String userName) {
        return userDao.findUserByName(userName);
    }
}
