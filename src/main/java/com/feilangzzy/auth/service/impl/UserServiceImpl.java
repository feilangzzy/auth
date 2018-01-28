package com.feilangzzy.auth.service.impl;

import com.feilangzzy.auth.dao.UserMapper;
import com.feilangzzy.auth.entity.User;
import com.feilangzzy.auth.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by zhangzhenyu on 2017/7/12.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public User getUserByLoginName(String loginName) {
        return userMapper.selectUserByLoginName(loginName);
    }
}
