package com.scu.crazyb.dao;

import com.scu.crazyb.bean.request.User;
import com.scu.crazyb.dao.entity.UserEntity;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {

    void insertUser(UserEntity user);

    UserEntity findUserByName(String userName);

    void updateUser(UserEntity user);
}
