package com.syx.ssm.mapper;

import com.syx.ssm.bean.Dept;

import java.util.List;

/**
 * @author:syx
 * @date:2021/7/2 9:58
 * @version:v1.0
 */
public interface DeptMapper {
    //获取所有的部门信息
    List<Dept> getAllDept();
}
