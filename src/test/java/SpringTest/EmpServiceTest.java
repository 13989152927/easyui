package SpringTest;


import com.dao.EmpDao;
import com.entity.Emp;
import com.service.EmpService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.Date;
import java.util.List;

public class EmpServiceTest extends BaseTest {
    @Autowired
    private EmpService empService;
    @Autowired
    private EmpDao empDao;
    @Test
    public void select(){
        List<Emp> all = empService.findAll();
        System.out.println(all);
    }
    
    @Test
    public void insert(){
        empService.save(new Emp(null,"梨花",41,new Date()));
        empService.save(new Emp(null,"梨花1",41,new Date()));
        empService.save(new Emp(null,"梨花2",41,new Date()));
        empService.save(new Emp(null,"梨花3",41,new Date()));
        empService.save(new Emp(null,"梨花4",41,new Date()));
        
    }
    @Test
    public void yeshu(){
       /* List<Emp> bypage = empService.findBypage(1, 2);
        System.out.println(bypage);*/
        Long totals = empService.findTotals();
        System.out.println(totals);
    }
    @Test
    public void EmpDelect(){
        empService.EmpdelstId("1");
    }
    @Test
    public void update(){
        Emp emp =new Emp();
        emp.setAge(45);
        emp.setName("里所有");
        emp.setId("e5589f01-d8a3-4278-af11-c149d7e0a0b9");
        empService.Empupdate(emp);
    }
}
