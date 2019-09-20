package com.scu.crazyb.service;

import com.scu.crazyb.bean.request.User;
import com.scu.crazyb.dao.entity.UserEntity;
import org.springframework.stereotype.Service;

@Service
public interface UserService {

    void insertUser(User user);

    UserEntity findUserByName(String userName);

    void updateUser(UserEntity user);
}
