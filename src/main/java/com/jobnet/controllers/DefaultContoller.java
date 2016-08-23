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
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author abush
 */
@Controller
public class DefaultContoller {
    
    @Autowired JobDAO jobDAO;
    @Autowired ApplicantDAO applicantDAO;
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(ModelMap modelMap){
        List<Job> topFive = jobDAO.getTopFiveJobs();
        modelMap.put("topFive",topFive);
        return "index";
    }
    
//    @RequestMapping(value="/profile", method=RequestMethod.POST)
//    public String getProfilePage(ModelMap model,@RequestParam String id ){
//         
////        List<Applicant> applicantProfile = applicantDAO.loadProfile(id);
//       model.put("userProfile", id);
//        return "profile";
//    }
    
   
}
