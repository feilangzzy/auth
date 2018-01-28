package com.feilangzzy.auth.service;

import com.feilangzzy.auth.entity.Menu;

import java.util.List;

/**
 * Created by zhangzhenyu on 2017/7/12.
 */
public interface MenuService {
    List<Menu> getMenusByRoleIds(List<Integer> roleIds);
}
