/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobnet.controllers;

import javax.servlet.http.HttpServletRequest;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author abush
 */
@Controller
 
 
public class Redirect {    
    @RequestMapping(value="oracle.htm",method = RequestMethod.GET)
    public String redirect(ModelMap mp, HttpServletRequest request){        
        return "redirect:http://www.oracle.com";
    }
    
    @RequestMapping(value="quora.htm",method = RequestMethod.GET)
    public String redirect1(ModelMap mp, HttpServletRequest request){        
        return "redirect:http://www.quora.com";
    }
    
    @RequestMapping(value="linkedin.htm",method = RequestMethod.GET)
    public String redirect2(ModelMap mp, HttpServletRequest request){        
        return "redirect:http://www.linkedin.com";
    }
    
    @RequestMapping(value="medium.htm",method = RequestMethod.GET)
    public String redirect3(ModelMap mp, HttpServletRequest request){        
        return "redirect:http://www.medium.com";
    }
    
    @RequestMapping(value="google.htm",method = RequestMethod.GET)
    public String redirectGoogle(ModelMap mp, HttpServletRequest request){        
        return "redirect:http://www.google.com";
    }
}
