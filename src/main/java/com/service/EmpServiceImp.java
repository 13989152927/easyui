package com.service;


import com.dao.EmpDao;
import com.entity.Emp;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class EmpServiceImp implements EmpService {
   
    @Autowired
    private EmpDao empDao;
    public void save(Emp emp) {
        
        emp.setId(UUID.randomUUID().toString());
        System.out.println(emp);
       empDao.save(emp);
    }

    @Transactional(propagation =Propagation.SUPPORTS)
    public List<Emp> findAll() {
        return empDao.findAll();
    }

    @Override
    @Transactional(propagation =Propagation.SUPPORTS)
    public List<Emp> findBypage(Integer page, Integer rows) {
        //page 页数 row 条数
        int start = (page-1)*rows;
        return empDao.findBypage(start,rows);
    }

   @Transactional(propagation =Propagation.SUPPORTS)
    public Long findTotals() {
        return empDao.findTotals();
    }
    @Override
    public void EmpdelstId(String id) {
    empDao.EmpdelstId(id);
    }

    @Override
    public void Empupdate(Emp emp) {
        empDao.Empupdate(emp);
    }

    @Override
    public Emp EmpId(String id) {
        return empDao.EmpId(id);
    }

    @Override
    public void delectAll(String[] list) {
        empDao.delectAll(list);
    }
}
