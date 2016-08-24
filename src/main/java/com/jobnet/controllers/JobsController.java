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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 *
 * @author Asefaw Mekuria
 */
@Controller
 
public class JobsController extends AbstractController{
    @Autowired 
    JobDAO jobDAO;
    
    @Override
     @RequestMapping(value="/jobs", method = RequestMethod.GET)
    protected ModelAndView handleRequestInternal(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    
    ModelAndView mv = new ModelAndView("jobs");
    List<Job> jobList = jobDAO.getJobs();
    List<Job> filteredJobs = jobDAO.getJobs();
    mv.addObject("allJobs", jobList);
    mv.addObject("filteredJobs", filteredJobs);
    return mv;
    }
    
     
    @RequestMapping(value="/jobs", method = RequestMethod.POST)
    public String filterJobs(ModelMap modelMap, @RequestParam String category,@RequestParam String location,@RequestParam String keyWord){
       List<Job> jobList = jobDAO.getByCategory(category,location,keyWord);
       List<Job> filteredJobs = jobDAO.getJobs();
       modelMap.put("allJobs", jobList);
       modelMap.put("filteredJobs", filteredJobs);
       return "jobs";
    }
    
    @RequestMapping("/index")
    public String getTopFiveJobs(ModelMap modelMap){
        List<Job> topFive = jobDAO.getTopFiveJobs();
        modelMap.put("topFive", topFive);
        return "index";
    }
    
    
    
}
