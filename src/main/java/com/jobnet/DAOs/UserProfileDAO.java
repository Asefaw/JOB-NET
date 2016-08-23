/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobnet.DAOs;

import com.jobnet.business.classes.Job;
import com.jobnet.business.classes.UserModel;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate; 

/**
 *
 * @author Asefaw Mekuria
 */
public class UserProfileDAO {
   private JdbcTemplate jdbcTemplate; 
   public void setJdbcTemplate(JdbcTemplate template){
       this.jdbcTemplate = template;
   }
    public void setDatasource(DataSource dsource){
        
    }
    
    
   public void createUSer(UserModel user) throws DataAccessException {
       String cst = "call ADDUSER(?,?,?,?)";
       java.sql.Date dateCreated = new java.sql.Date(System.currentTimeMillis()); 
       
           jdbcTemplate.update(cst, user.getUserName(),user.getPassword(),dateCreated,user.getRole());       
        
    }
   
   /* UpdateUserProfile();
   will  be used to update user profile such as chnaging password
   */
   public void updateUserProfile(String userName,String pass)throws DataAccessException{
       String sql = "call UPDATEUSER(?,?)";
       jdbcTemplate.update(sql,userName,pass);
   }
   
   /*authenticateUser(
   will be used to authentica users for credential
   */
   /*
   public List authenticateUser(String userName, String pass) throws EmptyResultDataAccessException{
    String sql = "SELECT * FROM userprofile where email='"+userName+"'"+" AND"+" password='"+pass+"'";
	return  jdbcTemplate.query(sql, (ResultSet rst) -> {
        try {
            List<UserModel> list = new ArrayList<>();
            
            while(rst.next()){
                UserModel user = new UserModel(); 
                
                user.setUserID(rst.getInt("profileID"));
                user.setUserName(rst.getString("email"));
                user.setPassword(rst.getString("password"));
                user.setRole(rst.getString("role"));
                list.add(user);
            }            
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(UserProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        }); 
   }*/
    
}
