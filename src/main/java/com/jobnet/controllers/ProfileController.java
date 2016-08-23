/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobnet.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author A
 */
@Controller
public class ProfileController {
    
    @RequestMapping(value="/profile", method=RequestMethod.GET)
    public String getProfile( ){
  
        return "profile";
    }
    @RequestMapping(value="/profile", method=RequestMethod.POST)
    public String getProfilePage(ModelMap model,@RequestParam String id ){
         
//        List<Applicant> applicantProfile = applicantDAO.loadProfile(id);
       model.put("userProfile", id);
        return "profile";
    }
}
