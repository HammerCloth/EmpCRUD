package com.syx.ssm.Service.impl;

import com.syx.ssm.Service.EmpService;
import com.syx.ssm.bean.Dept;
import com.syx.ssm.bean.Emp;
import com.syx.ssm.mapper.DeptMapper;
import com.syx.ssm.mapper.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author:syx
 * @date:2021/7/1 18:48
 * @version:v1.0
 */
@Service
public class EmpServiceImpl implements EmpService {

    @Autowired
    private EmpMapper mapper;

    @Autowired
    private DeptMapper deptMapper;

    @Override
    public List<Emp> getAllEmp() {
        return mapper.getAllEmp();
    }

    @Override
    public Emp getEmpByEid(String eid) {
        return mapper.getEmpByEid(eid);
    }

    @Override
    public void updateEmp(Emp emp) {
        mapper.updateEmp(emp);
    }

    @Override
    public List<Dept> getAllDept() {
        return deptMapper.getAllDept();
    }
}
