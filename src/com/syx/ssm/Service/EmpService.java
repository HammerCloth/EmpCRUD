package com.syx.ssm.Service;

import com.syx.ssm.bean.Dept;
import com.syx.ssm.bean.Emp;

import java.util.List;

/**
 * @author:syx
 * @date:2021/7/1 18:47
 * @version:v1.0
 */
public interface EmpService {
    //获取所有的员工信息
    List<Emp> getAllEmp();

    //更具id获取员工的信息
    Emp getEmpByEid(String eid);

    //修改员工信息
    void updateEmp(Emp emp);

    //获取所有部门信息
    List<Dept> getAllDept();

    //删除员工信息
    void deleteEmp(String eids);

    //添加员工信息
    void addEmp(Emp emp);
}
