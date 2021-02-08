package com.chen.ems.core.model;

import com.chen.ems.core.pojo.Menu;
import com.google.common.collect.Lists;
import lombok.Data;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description: 菜单树节点
 * @Date: Create in 22:16 2020/8/15
 */
@Data
public class MenuTreeNode extends Menu {

    List<MenuTreeNode> children = Lists.newArrayList();

}
