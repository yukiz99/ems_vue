package com.zhu.mapper;

import com.zhu.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper//用来创建dao对象
public interface UserMapper {

    void save(User user);

    User findByUserName(String username);
}
