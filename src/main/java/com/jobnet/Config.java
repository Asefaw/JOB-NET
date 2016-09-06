/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobnet;

import com.jobnet.DAOs.ApplicantDAO;
import com.jobnet.DAOs.JobDAO;
import java.io.IOException;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.resource.DefaultServletHttpRequestHandler;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

/**
 *
 * @author Asefaw Mekuria
 */
@Configuration
@ComponentScan(basePackages="com.jobnet")
@EnableWebMvc
public class Config extends WebMvcConfigurerAdapter {
    
    @Bean
    public UrlBasedViewResolver setupViewResolver(){
        UrlBasedViewResolver viewResolver = new UrlBasedViewResolver();
        viewResolver.setPrefix("/WEB-INF/jsp/");
        viewResolver.setSuffix(".jsp");
        viewResolver.setViewClass(JstlView.class);
        return viewResolver;
    }
    
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry){
        registry.addResourceHandler("/resources/**").addResourceLocations("/WEB-INF/resources/*");
        
    }
    
     
    @Bean
    public DataSource getDataSource(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
        dataSource.setUrl("jdbc:oracle:thin:@localhost:1521:oradb");
        dataSource.setUsername("jobnet");
        dataSource.setPassword("admin");
        return dataSource;
    } 
    
    // Configuring Multipart resolver for Upload file
    
//    @Bean
//    public CommonsMultipartResolver multipartResolver() {
//        return new CommonsMultipartResolver();
//    }
     
    @Bean(name = "multipartResolver")
    public CommonsMultipartResolver createMultipartResolver() {
        CommonsMultipartResolver resolver=new CommonsMultipartResolver();
        resolver.setDefaultEncoding("utf-8");
        return resolver;
    }
    @Bean
    public DefaultServletHttpRequestHandler createDefaultServletHttpRequestHandler() {
        return new DefaultServletHttpRequestHandler();
    }

    
    @Bean
    public JobDAO getJobDAO(){
        return new JobDAO(this.getDataSource());
    }
    
    @Bean 
    public ApplicantDAO getApplicantDAO(){
        return new ApplicantDAO(this.getDataSource());
    }
     
    
     
}
