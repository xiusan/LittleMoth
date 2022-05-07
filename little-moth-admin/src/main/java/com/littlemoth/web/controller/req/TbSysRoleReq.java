package com.littlemoth.web.controller.req;

import com.littlemoth.system.domain.TbSysRole;

import java.io.Serializable;

/**
 * 角色对象 tb_sys_role
 * 
 * @author xjl
 * @date 2022-01-19
 */
public class TbSysRoleReq  implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 归属机构 */
    private String officeId;

    /** 角色名称 */
    private String name;

    /** 英文名称 */
    private String enname;

    /** 角色类型，执行某种类型的任务默认null */
    private String roleType;

    /** 数据范围 */
    private String dataScope;

    /** 是否系统数据 */
    private String isSys;

    /** 是否可用 */
    private String useable;

    /** 创建者 */
    private Long creator;

    /** 更新者 */
    private Long updateUser;

    /** 备注信息 */
    private String remarks;

    /** 删除标记 默认0  是否删除  0否  1是  */
    private Integer isDel;


    public TbSysRole reqToBean() {
        TbSysRole role = new TbSysRole();
        role.setId(id);
        role.setName(name);
        role.setEnname(enname);
        role.setRoleType(roleType);
        role.setDataScope(dataScope);
        role.setIsSys(isSys);
        role.setUseable(useable);
        role.setCreator(creator);
        role.setUpdateUser(updateUser);
        role.setRemarks(remarks);
        role.setIsDel(isDel);
        return role;
    }

    public String getOfficeId() {
        return officeId;
    }

    public void setOfficeId(String officeId) {
        this.officeId = officeId;
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
    public void setEnname(String enname) 
    {
        this.enname = enname;
    }

    public String getEnname() 
    {
        return enname;
    }
    public void setRoleType(String roleType) 
    {
        this.roleType = roleType;
    }

    public String getRoleType() 
    {
        return roleType;
    }
    public void setDataScope(String dataScope) 
    {
        this.dataScope = dataScope;
    }

    public String getDataScope() 
    {
        return dataScope;
    }
    public void setIsSys(String isSys) 
    {
        this.isSys = isSys;
    }

    public String getIsSys() 
    {
        return isSys;
    }
    public void setUseable(String useable) 
    {
        this.useable = useable;
    }

    public String getUseable() 
    {
        return useable;
    }
    public void setCreator(Long creator) 
    {
        this.creator = creator;
    }

    public Long getCreator() 
    {
        return creator;
    }
    public void setUpdateUser(Long updateUser) 
    {
        this.updateUser = updateUser;
    }

    public Long getUpdateUser() 
    {
        return updateUser;
    }
    public void setRemarks(String remarks) 
    {
        this.remarks = remarks;
    }

    public String getRemarks() 
    {
        return remarks;
    }
    public void setIsDel(Integer isDel) 
    {
        this.isDel = isDel;
    }

    public Integer getIsDel() 
    {
        return isDel;
    }

}
