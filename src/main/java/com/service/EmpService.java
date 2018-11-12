package com.service;

import com.entity.Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpService {
    void save(Emp emp);
    List<Emp> findAll();
    
    // 参数1：起始条数  参数2：每页显示的记录数
    List<Emp> findBypage(Integer page,Integer rows);
    // 总条数
    Long findTotals();

    void EmpdelstId(String id);
    //修改
    void Empupdate(Emp emp);

    Emp EmpId(String id);
    //批量删除
    void delectAll(String[] list);
}
