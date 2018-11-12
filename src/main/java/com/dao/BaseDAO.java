package com.dao;

import com.entity.Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BaseDAO<T> {
    void save(T t);
    List<T> findAll();
    // 参数1：起始条数  参数2：每页显示的记录数
    List<T> findBypage(@Param("start") Integer start, @Param("rows") Integer rows);
    
    Long findTotals();
    
    void EmpdelstId(@Param("id") String id);
    //修改
   void Empupdate(T t);
   
   Emp EmpId(@Param("id") String id);
   //批量删除
    void delectAll(@Param("list") String[] list);
}
