/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobnet.controllers;

import com.jobnet.DAOs.ApplicantDAO;
import com.jobnet.DAOs.JobDAO;
import com.jobnet.business.classes.Applicant;
import com.jobnet.business.classes.Job;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 *
 * @author abush
 */
@MultipartConfig 
@Controller
@RequestMapping("/")
public class DefaultContoller {
    
    @Autowired JobDAO jobDAO;
    @Autowired ApplicantDAO applicantDAO;
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(ModelMap modelMap){
        List<Job> topFive = jobDAO.getTopFiveJobs();
        modelMap.put("topFive",topFive);
        return "index";
    }
    
    @RequestMapping(value="/profile/{id}")
    public String getProfilePage(ModelMap model, @PathVariable("id") String id ){
         
       List<Applicant> userProfile = applicantDAO.loadUserProfile(id);
       model.put("currentUser", userProfile);
        return "profile";
    }
    
    @RequestMapping(value = "/profile/update", method = RequestMethod.POST)
    public String updateUser(ModelMap model, @ModelAttribute("applicant") Applicant applicant){
        applicantDAO.update(applicant);
        return "success";
    }
    
     
    
    @RequestMapping("/logout")
    public String logout(ModelMap model){
        model.put("message", "You have been Loged out");
        return "success";
    }
    
    @RequestMapping("/resume")
    public String Resume(){ 
        return "resume";
    }
    
    @RequestMapping(value="/addresume", method = RequestMethod.POST)
    public String updateResume(ModelMap model, @RequestParam("resume") MultipartFile resume, @RequestParam("applicantId") String id ){
        if(resume != null){
            try {
                applicantDAO.updateResume(id, resume.getBytes());
            } catch (IOException ex) {
                Logger.getLogger(DefaultContoller.class.getName()).log(Level.SEVERE, null, ex);
            }
            model.put("message", "Profile Updated");
            return "success";
        }else{
            model.put("error", "Error while processing form");
            return "resume";
        }
         
    }
    @RequestMapping("/index")
    public String getIndex(ModelMap modelMap){
        List<Job> topFive = jobDAO.getTopFiveJobs();
        modelMap.put("topFive",topFive);
        return "index";
    }
   
}
