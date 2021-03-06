package com.syx.ssm.controller;

import com.syx.ssm.Service.EmpService;
import com.syx.ssm.bean.Dept;
import com.syx.ssm.bean.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author:syx
 * @date:2021/7/1 17:03
 * @version:v1.0
 */
@Controller
public class EmpControl {

    @Autowired
    private EmpService service;

    @RequestMapping(value = "/emps", method = RequestMethod.GET)
    public String getAllEmps(Map<String, Object> map) {
        List<Emp> allEmp = service.getAllEmp();
        map.put("empList", allEmp);
        return "list";
    }

    @RequestMapping(value = "emp/{eid}", method = RequestMethod.GET)
    public String toUpdate(@PathVariable("eid") String eid, Map<String, Object> map) {
//        所有的部门信息
        List<Dept> allDept = service.getAllDept();
//        获取存储性别的集合
        Map<String, String> sex = new HashMap<>();
        sex.put("0", "女");
        sex.put("1", "男");
//        要修改的员工信息
        Emp emp = service.getEmpByEid(eid);
        map.put("emp", emp);
        map.put("allDept", allDept);
        map.put("sex", sex);

        return "update";
    }
    @RequestMapping(value = "delemp/{eid}", method = RequestMethod.GET)
    public String toDelete(@PathVariable("eid") String eid, Map<String, Object> map){
//        获取存储性别的集合
        Map<String, String> sex = new HashMap<>();
        sex.put("0", "女");
        sex.put("1", "男");
//        获取员工信息
        Emp emp = service.getEmpByEid(eid);
        map.put("emp", emp);
        map.put("sex", sex);
        return "delete";
    }

    @RequestMapping(value = "/emp", method = RequestMethod.PUT)
    public String updateEmp(Emp emp) {
        service.updateEmp(emp);
        return "redirect:/emps";
    }

    @RequestMapping(value = "/emps",method = RequestMethod.DELETE)
    public String deleteMore(String eid){
        service.deleteEmp(eid);
        return "redirect:/emps";
    }

    @RequestMapping(value = "/emp",method = RequestMethod.DELETE)
    public String deleteEmp(String eid){
        service.deleteEmp(eid);
        return "redirect:/emps";
    }

    @RequestMapping(value = "addemp" ,method = RequestMethod.GET)
    public String toAdd(Map<String, Object> map){
//        所有的部门信息
        List<Dept> allDept = service.getAllDept();
//        获取存储性别的集合
        Map<String, String> sex = new HashMap<>();
        sex.put("0", "女");
        sex.put("1", "男");
//        获取员工信息
        map.put("allDept", allDept);
        map.put("sex", sex);
        return "add";
    }

    @RequestMapping(value = "/emp",method = RequestMethod.POST)
    public String add(Emp emp){
        service.addEmp(emp);
        return "redirect:/emps";
    }
}
