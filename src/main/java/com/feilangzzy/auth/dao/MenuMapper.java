package com.feilangzzy.auth.dao;

import com.feilangzzy.auth.entity.Menu;
import java.util.List;

public interface MenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Menu record);

    Menu selectByPrimaryKey(Integer id);

    List<Menu> selectAll();

    int updateByPrimaryKey(Menu record);

    List<Menu> selectMenusByRoleIds(List<Integer> roleIds);
}