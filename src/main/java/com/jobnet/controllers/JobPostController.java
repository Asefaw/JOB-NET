/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobnet.controllers;

import com.jobnet.DAOs.JobDAO;
import com.jobnet.business.classes.Job;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod; 
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Asefaw Mekuria
 */
@Controller
@RequestMapping("jobpost.htm")
public class JobPostController {

     @Autowired 
     JobDAO jobDAO; 
     
     @RequestMapping(method = RequestMethod.GET)
     public String LoadPage(ModelMap modelMap){
         modelMap.put("msg", "JobPostPage");
         return "jobpost";
     }
     @RequestMapping(method = RequestMethod.POST)
     public String loadPage(ModelMap modelMap, @ModelAttribute("job")  Job job){
         
         /** if job is saved to database successfully, 
          * return and show job posted if not
          * show appropriate error message
          */
         if(jobDAO.saveJob(job)){
             modelMap.put("status", "Job Saved Successfully");
             return "jobs";
         }else{
             modelMap.put("error", "Error Occured check all Values");
             return "jobpost";
         }
     }
     
     
             
    
}
