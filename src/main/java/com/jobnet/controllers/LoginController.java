/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobnet.controllers;

import com.jobnet.DAOs.ApplicantDAO;
import com.jobnet.DAOs.JobDAO;
import com.jobnet.DAOs.UserProfileDAO;
import com.jobnet.business.classes.Applicant;
import com.jobnet.business.classes.Job;
import com.jobnet.business.classes.UserModel;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller; 
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod; 
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author Asefaw Mekuria
 */
@Controller
@RequestMapping("/login")
@SessionAttributes("user")
public class LoginController {
     @Autowired
     ApplicantDAO applicantDAO;
     @Autowired 
     JobDAO jobDAO;
    
    @RequestMapping(method = RequestMethod.GET)
    public String showLoginPage(ModelMap model_map){
        return "login";
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public String authenticateUser(HttpServletRequest request,ModelMap model_map, 
            @ModelAttribute("userPr") Applicant userPr, @RequestParam("userName") String uname,@RequestParam("password") String pass) {
              
        List<Applicant> applicant = applicantDAO.validate(uname,pass);
         String name;
         String email;
         int id;
        if(applicant != null){
            Applicant user = applicant.get(0);
            name = user.getFirstName()+", "+user.getLastName();
            email = user.getEmail();      
            id = user.getApplicantId();
            
            List<Job> filteredJobs = jobDAO.getJobs();
             
            model_map.put("email", email);
            model_map.put("loggedIn", true);
            request.getSession().setAttribute("applicantID", id);
            model_map.put("filteredJobs", filteredJobs);
            request.getSession().setAttribute("name", name);
            request.getSession().setAttribute("email", email);            
            return "redirect:/jobs";
        }else{
            model_map.put("error", "Invalid UserName or Password");
            return "login";
        }
    }
}
