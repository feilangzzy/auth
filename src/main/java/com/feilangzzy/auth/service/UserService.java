package com.feilangzzy.auth.service;

import com.feilangzzy.auth.entity.User;

/**
 * Created by zhangzhenyu on 2017/7/12.
 */
public interface UserService {

    User getUserByLoginName(String loginName);
}
