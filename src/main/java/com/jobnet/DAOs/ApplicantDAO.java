/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobnet.DAOs;

import com.jobnet.business.classes.Applicant;
import com.jobnet.business.classes.UserModel;
import java.io.File;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

/**
 *
 * @author Asefaw Mekuria
 */
public class ApplicantDAO {
    private JdbcTemplate jdbcTemplate;
    private MultipartResolver multipartRsolver;

    public ApplicantDAO(DataSource dataSource) {
       this.jdbcTemplate = new JdbcTemplate(dataSource);  
       
    } 
    /**
     * default Constructor
     
    public ApplicantDAO() {
    } */

    /**
     * @param jdbcTemplate the jdbcTemplate to set
     */
    public void setJdbcTemplate(DataSource jdbcTemplate) {
        this.jdbcTemplate = new JdbcTemplate(jdbcTemplate);
    }
    
    /** 
     * @param applicant Save a new Applicant to Database
     * @param id
     * @return 
     */
    public boolean save(Applicant applicant){
        String sql = "{call InsertApplicant(?,?,?,?,?,?,?,?,?,?)}";
         
        //try{
            jdbcTemplate.update(sql, 
                applicant.getFirstName(),
                applicant.getLastName(),
                applicant.getProfession(), 
                applicant.getEmail(),
                applicant.getPassword(),
                applicant.getPhone(),
                applicant.getAddress(),
                applicant.getWebSite(),
                applicant.getLinkedIn(),
                applicant.getGitHubUrl()
            ); 
            return true;
       // }catch(Exception ex){
          //  return false;
        //}
     
    }
    
    public void insertResume(int applicantID, InputStream resume)throws DataAccessException{
        String sql = "{call AddResume(?,?)}";
        try{
            jdbcTemplate.update(sql,applicantID,resume);
        }catch(Exception ex){
            
        }
    }
    
    /**
     * @param applicantID to load a record of an applicant
     */
    public void load(String applicantID){
        
    }
    
    /**
     * 
     * @param applicantID 
     */
    public void delete(String applicantID){
        
    }
    /** 
     * @param applicant to be updated
     */
    public void update(Applicant applicant){
        String sql = "{call UPDATEPROFILE(?,?,?,?,?,?,?,?,?,?)}";
          
            jdbcTemplate.update(sql, 
                applicant.getApplicantId(),
                applicant.getFirstName(),
                applicant.getLastName(),
                applicant.getProfession(), 
                applicant.getEmail(), 
                applicant.getPhone(),
                applicant.getAddress(),
                applicant.getWebSite(),
                applicant.getLinkedIn(),
                applicant.getGitHubUrl()
            ); 
    }
    
    /**
     * @param id
     * @param resume 
     */
    public void updateResume(String id, byte[] resume){
        String sql = "{call addresume(?,?)}";
        jdbcTemplate.update(sql,Integer.parseInt(id),resume);
    }
    /*authenticateUser(
   will be used to authentica users for credential
   */
    public List<Applicant> validate(String userName, String pass){
        String sql = "SELECT * FROM applicant where email='"+userName+"'"+" AND"+" password='"+pass+"'";
        List<Applicant> listApplicant = jdbcTemplate.query(sql, new RowMapper<Applicant>(){
            @Override
            public Applicant mapRow(ResultSet rst, int i) throws SQLException {
                Applicant applicant = new Applicant(); 
                applicant.setApplicantId(rst.getInt("applicantid"));
                applicant.setFirstName(rst.getString("firstName"));
                applicant.setLastName(rst.getString("lastName"));
                applicant.setEmail(rst.getString("email"));
                applicant.setPassword(rst.getString("password"));
                applicant.setPhone(rst.getString("phone"));
                applicant.setAddress(rst.getString("address"));
                applicant.setProfession(rst.getString("profession"));
                applicant.setWebSite(rst.getString("website"));
                applicant.setLinkedIn(rst.getString("linkedin"));
                applicant.setGitHubUrl(rst.getString("githuburl"));
                return applicant;
            }
            
        });
        return listApplicant;
    }
   
 /*authenticateUser(
   will be used to authentica users for credential
   */
     public List<Applicant> loadUserProfile(String id){
        String sql = "SELECT * FROM applicant where applicantid='"+Integer.parseInt(id)+"'";
        List<Applicant> listApplicant = jdbcTemplate.query(sql, new RowMapper<Applicant>(){
            @Override
            public Applicant mapRow(ResultSet rst, int i) throws SQLException {
                Applicant applicant = new Applicant(); 
                applicant.setApplicantId(rst.getInt("applicantid"));
                applicant.setFirstName(rst.getString("firstName"));
                applicant.setLastName(rst.getString("lastName"));
                applicant.setEmail(rst.getString("email"));
                applicant.setPassword(rst.getString("password"));
                applicant.setPhone(rst.getString("phone"));
                applicant.setAddress(rst.getString("address"));
                applicant.setProfession(rst.getString("profession"));
                applicant.setWebSite(rst.getString("website"));
                applicant.setLinkedIn(rst.getString("linkedin"));
                applicant.setGitHubUrl(rst.getString("githuburl"));
                return applicant;
            }
            
        });
        return listApplicant;
    }
}
