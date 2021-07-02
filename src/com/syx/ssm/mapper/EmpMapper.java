package com.syx.ssm.mapper;

import com.syx.ssm.bean.Emp;

import java.util.List;

/**
 * @author:syx
 * @date:2021/7/1 18:48
 * @version:v1.0
 */
public interface EmpMapper {

    //获取所有的员工信息
    List<Emp> getAllEmp();

    //更具id获取员工的信息
    Emp getEmpByEid(String eid);

    //修改员工信息
    void updateEmp(Emp emp);
}
