package com.littlemoth.system.service.impl;

import com.littlemoth.common.constant.Constants;
import com.littlemoth.common.core.domain.TbSysOffice;
import com.littlemoth.common.core.domain.TreeSelect;
import com.littlemoth.common.core.domain.model.TbSysUser;
import com.littlemoth.common.utils.DateUtils;
import com.littlemoth.common.utils.uuid.SnowFlakeUtil;
import com.littlemoth.system.mapper.TbSysOfficeMapper;
import com.littlemoth.system.service.ITbSysOfficeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

/**
 * 机构Service业务层处理
 *
 * @author xusan
 * @date 2022-01-12
 */
@Service
public class TbSysOfficeServiceImpl implements ITbSysOfficeService {
    @Autowired
    private TbSysOfficeMapper tbSysOfficeMapper;

    /**
     * 查询机构
     *
     * @param id 机构主键
     * @return 机构
     */
    @Override
    public TbSysOffice selectTbSysOfficeById(Long id) {
        TbSysOffice tbSysOffice = tbSysOfficeMapper.selectTbSysOfficeById(id);
        if(Objects.isNull(tbSysOffice)){
            return null;
        }
        TbSysOffice tbSysOfficePra = new TbSysOffice();
        tbSysOfficePra.setParentIds(tbSysOffice.getParentIds()+id+",");
        List<TbSysOffice> tbSysOffices = tbSysOfficeMapper.selectTbSysOfficeList(tbSysOfficePra);
        Set<String> offeceSon = new HashSet<String>();
        for (TbSysOffice office : tbSysOffices) {
            offeceSon.add(office.getName());
        }
        tbSysOffice.setOffeceSon(offeceSon);
        return tbSysOffice;
    }

    /**
     * 查询机构列表
     *
     * @param tbSysOffice 机构
     * @return 机构
     */
    @Override
    public List<TbSysOffice> selectTbSysOfficeList(TbSysOffice tbSysOffice, TbSysUser user) {
        tbSysOffice.setIsDel(Integer.parseInt(Constants.SUCCESS));
        return tbSysOfficeMapper.selectTbSysOfficeList(tbSysOffice);
    }


    /**
     * 构建前端所需要树结构
     *
     * @param offices 部门列表
     * @return 树结构列表
     */
    @Override
    public List<TbSysOffice> buildOfficeTree(List<TbSysOffice> offices) {
        List<TbSysOffice> returnList = new ArrayList<TbSysOffice>();
        List<Long> tempList = new ArrayList<Long>();
        for (TbSysOffice office : offices) {
            tempList.add(office.getId());
        }
        for (Iterator<TbSysOffice> iterator = offices.iterator(); iterator.hasNext(); ) {
            TbSysOffice office = (TbSysOffice) iterator.next();
            // 如果是顶级节点, 遍历该父节点的所有子节点
            if (!tempList.contains(Long.parseLong(office.getParentId()))) {
                recursionFn(offices, office);
                returnList.add(office);
            }
        }
        if (returnList.isEmpty()) {
            returnList = offices;
        }
        return returnList;
    }

    /**
     * 构建前端所需要下拉树结构
     *
     * @param offices 部门列表
     * @return 下拉树结构列表
     */
    @Override
    public List<TreeSelect> buildSysOfficeTreeSelect(List<TbSysOffice> offices) {
        List<TbSysOffice> officeTrees = buildOfficeTree(offices);
        return officeTrees.stream().map(TreeSelect::new).collect(Collectors.toList());
    }

    /**
     * 新增机构
     *
     * @param tbSysOffice 机构
     * @return 结果
     */
    @Override
    public int insertTbSysOffice(TbSysOffice tbSysOffice,TbSysUser user) {
        int resultInt = 0;
        String officeCode = SnowFlakeUtil.getId();
        tbSysOffice.setOfficeCode(officeCode);
        universalityMessage(tbSysOffice, user);
        if(Objects.isNull(tbSysOffice.getId())){
            tbSysOffice.setParentIds(Constants.PARENTIDS);
            tbSysOffice.setParentId(Constants.STAIR_MENU);
            resultInt = tbSysOfficeMapper.insertTbSysOffice(tbSysOffice);
        }else {
            TbSysOffice tbSysOffices = tbSysOfficeMapper
                    .selectTbSysOfficeById(Long.parseLong(String.valueOf(tbSysOffice.getId())));
            Long id = tbSysOffices.getId();
            tbSysOffice.setParentIds(tbSysOffices.getParentIds()+id+",");
            tbSysOffice.setParentId(String.valueOf(id));
            resultInt = tbSysOfficeMapper.insertTbSysOffice(tbSysOffice);
        }
        return resultInt;
    }


    /**
     * @Author xjl
     * @Description 通用添加信息
     * @Date 2022/1/22 10:58
     */
    private void universalityMessage(TbSysOffice tbSysOffice, TbSysUser user) {
        tbSysOffice.setCreateTime(DateUtils.getNowDate());
        tbSysOffice.setUpdateTime(DateUtils.getNowDate());
        tbSysOffice.setCreator(user.getId());
        tbSysOffice.setUpdateUser(user.getId());
    }

    /**
     * 修改机构
     *
     * @param tbSysOffice 机构
     * @return 结果
     */
    @Override
    public int updateTbSysOffice(TbSysOffice tbSysOffice, TbSysUser user) {
        tbSysOffice.setUpdateTime(DateUtils.getNowDate());
        return tbSysOfficeMapper.updateTbSysOffice(tbSysOffice);
    }

    /**
     * 批量删除机构
     *
     * @param ids 需要删除的机构主键
     * @return 结果
     */
    @Override
    public int deleteTbSysOfficeByIds(Long[] ids) {
        return tbSysOfficeMapper.deleteTbSysOfficeByIds(ids);
    }

    /**
     * 删除机构信息
     *
     * @param id 机构主键
     * @return 结果
     */
    @Override
    public int deleteTbSysOfficeById(Long id) {
        return tbSysOfficeMapper.deleteTbSysOfficeById(id);
    }

    /**
     * 递归列表
     */
    private void recursionFn(List<TbSysOffice> list, TbSysOffice t) {
        // 得到子节点列表
        List<TbSysOffice> childList = getChildList(list, t);
        t.setChildren(childList);
        for (TbSysOffice tChild : childList) {
            if (hasChild(list, tChild)) {
                recursionFn(list, tChild);
            }
        }
    }


    /**
     * 得到子节点列表
     */
    private List<TbSysOffice> getChildList(List<TbSysOffice> list, TbSysOffice t) {
        List<TbSysOffice> tlist = new ArrayList<TbSysOffice>();
        Iterator<TbSysOffice> it = list.iterator();
        while (it.hasNext()) {
            TbSysOffice n = (TbSysOffice) it.next();
            if (n.getParentId().equals(String.valueOf(t.getId()))) {
                tlist.add(n);
            }
        }
        return tlist;
    }

    /**
     * 判断是否有子节点
     */
    private boolean hasChild(List<TbSysOffice> list, TbSysOffice t) {
        return getChildList(list, t).size() > 0;
    }

}
