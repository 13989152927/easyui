package com.EmpContorller;

import com.entity.Emp;
import com.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/Emp")
public class EmpServiceController {
    @Autowired
    private EmpService empService;
    
   @RequestMapping("/save")
    public @ResponseBody Map<String,Object> findAll(Integer page,Integer rows){
        Map<String,Object> result = new HashMap<String,Object>();
        //当前页数 rows
        List<Emp> emps = empService.findBypage(page,rows);
        //记录总条数
        Long totals = empService.findTotals();
        result.put("total",totals);
        result.put("rows",emps);
        return result;
    }
    //删除
    @RequestMapping(value="/delectId"/*,method = RequestMethod.POST*/)
    public  @ResponseBody Map<String,Object>EmpDlectId(String id){
       Map<String,Object> result = new HashMap<String,Object>();
       try{
           empService.EmpdelstId(id);
           result.put("success",true);
       }catch(Exception e){
           e.printStackTrace();
           result.put("success",false);
           result.put("message",e.getMessage());
       }
        return result;
    }
    //添加
    @RequestMapping("/add")
    public @ResponseBody  Map<String,Object>Empadd(Emp emp){
       Map<String,Object> result = new HashMap<String,Object>();
       try{
           empService.save(emp);
           result.put("success",true);
       }catch(Exception e){
           e.printStackTrace();
           result.put("success",false);
           result.put("message",e.getMessage());
       }
       return result;
    }
    //修改
    @RequestMapping("/update")
    public @ResponseBody Map<String,Object> EmpUpdate(Emp emp){
       Map<String,Object> result=new HashMap<String,Object>();
       try{
           empService.Empupdate(emp);
           result.put("success",true);
       }catch(Exception e){
           e.printStackTrace();
           result.put("success",false);
           result.put("massage",e.getMessage());           
       }
       return result;
    }
    @RequestMapping("/selectId")
    public @ResponseBody Emp selectId(String id){
        Emp emp = empService.EmpId(id);
        return emp;
    }
    @RequestMapping("/delectAll")
    public @ResponseBody  Map<String,Object> delectAll(String[] id){
        System.out.println(id);
      Map<String,Object> result=new HashMap<String,Object>();
      try{
         empService.delectAll(id);
          result.put("success",true);
      }catch(Exception e){
          e.printStackTrace();
          result.put("success",false);
          result.put("message",e.getMessage());
      }
      return result;
      
    }
}
