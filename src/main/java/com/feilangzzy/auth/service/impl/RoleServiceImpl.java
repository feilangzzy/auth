package com.feilangzzy.auth.service.impl;

import com.feilangzzy.auth.dao.RoleMapper;
import com.feilangzzy.auth.entity.Role;
import com.feilangzzy.auth.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhangzhenyu on 2017/7/12.
 */
@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleMapper roleMapper;

    @Override
    public List<Role> getRolesByUserId(Integer userId) {
        return roleMapper.selectRolesByUserId(userId);
    }
}
