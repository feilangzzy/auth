package com.feilangzzy.auth.dao;

import com.feilangzzy.auth.entity.RoleMenu;
import java.util.List;

public interface RoleMenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RoleMenu record);

    RoleMenu selectByPrimaryKey(Integer id);

    List<RoleMenu> selectAll();

    int updateByPrimaryKey(RoleMenu record);
}