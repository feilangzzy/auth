package com.feilangzzy.auth.service.impl;

import com.feilangzzy.auth.dao.MenuMapper;
import com.feilangzzy.auth.entity.Menu;
import com.feilangzzy.auth.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhangzhenyu on 2017/7/12.
 */
@Service
public class MenuServiceImpl implements MenuService {
    @Autowired
    private MenuMapper menuMapper;

    @Override
    public List<Menu> getMenusByRoleIds(List<Integer> roleIds) {
        return menuMapper.selectMenusByRoleIds(roleIds);
    }
}
