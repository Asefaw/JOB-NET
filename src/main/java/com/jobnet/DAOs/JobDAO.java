/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobnet.DAOs;

import com.jobnet.business.classes.Job;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Asefaw Mekuria
 */
public class JobDAO {
    private JdbcTemplate jdbcTemplate;

    public JobDAO(DataSource dataSource) {
       this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    
    
    public boolean saveJob(Job job){
        String sql = "{call SaveJob(?,?,?,?,?,?,?,?,?,?,?,?)}";
        
        try{
            jdbcTemplate.update(sql, 
                    job.getJobID(),
                    job.getPostedBY(), 
                    job.getEmployerName(),
                    job.getEmployerWebsite(),
                    job.getJobTitle(),
                    job.getPositionType(),
                    job.getJobDescription(),
                    job.getRequirements(),
                    job.getApplicationDeadline(),
                    job.getCategory(),
                    job.getLocation(),
                    job.getSalary());
            return true;
        }catch(Exception ex){
            return false;
        }
    }
    
    public List<Job> getJobs() {
	String sql = "SELECT * FROM JOB";
	List<Job> jobList =  jdbcTemplate.query(sql, new RowMapper<Job>() {         
            @Override
            public Job mapRow(ResultSet rst, int i) throws SQLException {
                Job job = new Job();
                
                job.setJobID(rst.getString("JOBID"));
                job.setEmployerName(rst.getString("employerName"));
                job.setEmployerWebsite(rst.getString("employerWebsite"));
                job.setJobTitle(rst.getString("jobTitle"));
                job.setPositionType(rst.getString("jobType"));
                job.setJobDescription(rst.getString("DESCRIPTION"));
                job.setRequirements(rst.getString("REQUIREMENTS"));
                job.setPostedBY(rst.getInt("postedby"));
                job.setApplicationDeadline(rst.getDate("deadline"));
                job.setCategory(rst.getString("category"));
                job.setLocation(rst.getString("location"));
                job.setSalary(rst.getDouble("salary")); 
                return job;
            }
            
        }); 
        return jobList;
  }
    public List<Job> getByCategory(String category,String location, String keyWord){
        String sql = "select * from job where category='"+category+"'"+" OR"+" location='"+location+"'";
        List<Job> jobList =  jdbcTemplate.query(sql, new RowMapper<Job>() {  
            @Override
            public Job mapRow(ResultSet rst, int i) throws SQLException {
               Job job = new Job();                
                job.setJobID(rst.getString("JOBID"));
                job.setEmployerName(rst.getString("employerName"));
                job.setEmployerWebsite(rst.getString("employerWebsite"));
                job.setJobTitle(rst.getString("jobTitle"));
                job.setPositionType(rst.getString("jobType"));
                job.setJobDescription(rst.getString("DESCRIPTION"));
                job.setRequirements(rst.getString("REQUIREMENTS"));
                job.setPostedBY(rst.getInt("postedby"));
                job.setApplicationDeadline(rst.getDate("deadline"));
                job.setCategory(rst.getString("category"));
                job.setLocation(rst.getString("location"));
                job.setSalary(rst.getDouble("salary"));
                return job; 
            }                      
        });
        return jobList;
    }
    
    /*
    top 5 jobs
    */
    public List<Job> getTopFiveJobs() {
	String sql = "SELECT * FROM JOB FETCH NEXT 5 ROWS ONLY";
	 List<Job> jobList =  jdbcTemplate.query(sql, new RowMapper<Job>() {   
            @Override
            public Job mapRow(ResultSet rst, int i) throws SQLException {
               Job job = new Job();
                
                job.setJobID(rst.getString("JOBID"));
                job.setEmployerName(rst.getString("employerName"));
                job.setEmployerWebsite(rst.getString("employerWebsite"));
                job.setJobTitle(rst.getString("jobTitle"));
                job.setPositionType(rst.getString("jobType"));
                job.setJobDescription(rst.getString("DESCRIPTION"));
                job.setRequirements(rst.getString("REQUIREMENTS"));
                job.setPostedBY(rst.getInt("postedby"));
                job.setApplicationDeadline(rst.getDate("deadline"));
                job.setCategory(rst.getString("category"));
                job.setLocation(rst.getString("location"));
                job.setSalary(rst.getDouble("salary"));
                return job;             
            }
                 
        }); 
         return jobList;
  }
} 
