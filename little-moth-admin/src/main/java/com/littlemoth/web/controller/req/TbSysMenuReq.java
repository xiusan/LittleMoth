package com.littlemoth.web.controller.req;

import com.littlemoth.common.core.domain.entity.TbSysMenu;

import java.io.Serializable;

import static javax.swing.UIManager.getString;

/**
 * 菜单对象 tb_sys_menu
 * 
 * @author xjl
 * @date 2022-01-12
 */
public class TbSysMenuReq implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 名称 */
    private String name;

    /** 父级编号 */
    private String parentId;

    /** 所有父级编号 */
    private String parentIds;

    /** 路由地址 */
    private String path;

    /** 组件路径 */
    private String component;

    /** 重定向 */
    private String redirect;

    /** 面包屑 */
    private Boolean breadcrumb;

    /** 页面是否缓存 */
    private Boolean keepAlive;

    /** 页面标题 */
    private String title;

    /** 排序 */
    private Long sort;

    /** 菜单类型（M目录 C菜单 F按钮） */
    private String menuType;

    /** 链接 */
    private String href;

    /** 目标 */
    private String target;

    /** 图标 */
    private String icon;

    /** 是否在菜单中显示 是否在菜单中显示0是不展示1是展示*/
    private Boolean hidden;

    /** 权限标识 */
    private String permis;


    /** 备注信息 */
    private String remarks;

    /** 创建者 */
    private Long creator;

    public TbSysMenu reqToBean() {
        TbSysMenu menu = new TbSysMenu();
        menu.setId(id);
        menu.setName(name);
        menu.setParentId(parentId);
        menu.setPath(path);
        menu.setComponent(component);
        menu.setRedirect(redirect);
        menu.setBreadcrumb(getHiddenInteger(breadcrumb));
        menu.setKeepAlive(getHiddenInteger(keepAlive));
        menu.setTitle(title);
        menu.setSort(sort);
        menu.setMenuType(menuType);
        menu.setHref(href);
        menu.setTarget(target);
        menu.setIcon(icon);
        menu.setHidden(getHiddenString(hidden));
        menu.setPermis(permis);
        menu.setRemarks(remarks);
        menu.setCreator(creator);
        return menu;
    }

    private String getHiddenString(Boolean boo) {
        if(boo == null){
            return null;
        }
        return boo==true?"0":"1";
    }

    private Integer getHiddenInteger(Boolean boo) {
        if(boo == null){
            return null;
        }
        return boo==true?0:1;
    }

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setParentId(String parentId) 
    {
        this.parentId = parentId;
    }

    public String getParentId() 
    {
        return parentId;
    }
    public void setParentIds(String parentIds) 
    {
        this.parentIds = parentIds;
    }

    public String getParentIds() 
    {
        return parentIds;
    }
    public void setPath(String path) 
    {
        this.path = path;
    }

    public String getPath() 
    {
        return path;
    }
    public void setComponent(String component) 
    {
        this.component = component;
    }
    public void setRedirect(String redirect)
    {
        this.redirect = redirect;
    }

    public String getRedirect()
    {
        return redirect;
    }

    public Boolean getBreadcrumb() {
        return breadcrumb;
    }

    public void setBreadcrumb(Boolean breadcrumb) {
        this.breadcrumb = breadcrumb;
    }

    public Boolean getKeepAlive() {
        return keepAlive;
    }

    public void setKeepAlive(Boolean keepAlive) {
        this.keepAlive = keepAlive;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getComponent()
    {
        return component;
    }
    public void setSort(Long sort) 
    {
        this.sort = sort;
    }

    public Long getSort() 
    {
        return sort;
    }
    public void setMenuType(String menuType) 
    {
        this.menuType = menuType;
    }

    public String getMenuType() 
    {
        return menuType;
    }
    public void setHref(String href) 
    {
        this.href = href;
    }

    public String getHref() 
    {
        return href;
    }
    public void setTarget(String target) 
    {
        this.target = target;
    }

    public String getTarget() 
    {
        return target;
    }
    public void setIcon(String icon) 
    {
        this.icon = icon;
    }

    public String getIcon() 
    {
        return icon;
    }

    public Boolean getHidden() {
        return hidden;
    }

    public void setHidden(Boolean hidden) {
        this.hidden = hidden;
    }

    public void setPermis(String permis)
    {
        this.permis = permis;
    }

    public String getPermis() 
    {
        return permis;
    }

    public void setRemarks(String remarks) 
    {
        this.remarks = remarks;
    }

    public String getRemarks() 
    {
        return remarks;
    }

    public Long getCreator() {
        return creator;
    }

    public void setCreator(Long creator) {
        this.creator = creator;
    }
}
