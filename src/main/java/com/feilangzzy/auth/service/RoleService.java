package com.feilangzzy.auth.service;

import com.feilangzzy.auth.entity.Role;

import java.util.List;

/**
 * Created by zhangzhenyu on 2017/7/12.
 */
public interface RoleService {
    List<Role> getRolesByUserId(Integer userId);
}
