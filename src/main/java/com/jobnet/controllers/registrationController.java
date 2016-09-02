/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobnet.controllers;

import com.jobnet.DAOs.ApplicantDAO;
import com.jobnet.business.classes.Applicant;
import java.io.File;
import java.io.FileOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 *
 * @author Asefaw Mekuria
 */
@Controller
@RequestMapping("/registration")
public class registrationController {

    @Autowired
    ApplicantDAO applicantDAO;
     
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView showPage(ModelAndView model){
        model.setViewName("registration");
        return model;
    }
    
    @RequestMapping(method=RequestMethod.POST)
    public String processForm(ModelMap modelMap,@ModelAttribute("applicant")  Applicant applicant){ 
        modelMap.put("status", "Registered Succssesfully");
         applicantDAO.save(applicant);
         return "redirect:/login";
       /* if(applicantDAO.save(applicant)){
            modelMap.put("status", "Succsses");
            return "welcome";
        } else {
            modelMap.put("error", "Error while saving Applicant, Verify All Inputs");
            return "registration";
        } */
        } 
    
}
