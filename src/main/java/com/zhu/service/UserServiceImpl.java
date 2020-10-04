package com.zhu.service;

import com.zhu.entity.User;
import com.zhu.mapper.UserMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;

import java.util.Date;

@Service
@Transactional
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;
    
   
    @Override
    public void register(User user) {
        User userDB = userMapper.findByUserName(user.getUsername());
        if (userDB==null){
            user.setStatus("已激活");
            user.setRegisterTime(new Date());
            userMapper.save(user);
        }else {
            throw new RuntimeException("用户名已存在！");
        }


    }

    @Override
    public User login(User user) {
        User userDB = userMapper.findByUserName(user.getUsername());
        if (!ObjectUtils.isEmpty(userDB)){
            //比较密码
            if (userDB.getPassword().equals(user.getPassword())) {
                return userDB;
            }else {
                throw new RuntimeException("密码输入不正确！");
            }
        }else{
            throw new RuntimeException("用户名输入错误！");
        }

    }
}
