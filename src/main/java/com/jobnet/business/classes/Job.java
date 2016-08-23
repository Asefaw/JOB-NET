/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobnet.business.classes;

import java.util.Date;
import java.util.UUID;

/**
 *
 * @author Asefaw Mekuria
 */
public class Job {
    private String employerName;
    private String employerWebsite;
    private String jobTitle;
    private String positionType;
    private String jobDescription;
    private String requirements;
    private Date applicationDeadline;
    private int postedBY;
    private String jobID;
    private String category;
    private String location;
    private double salary;

    /**
     * @return the employerName
     */
    public String getEmployerName() {
        return employerName;
    }

    /**
     * @param employerName the employerName to set
     */
    public void setEmployerName(String employerName) {
        this.employerName = employerName;
    }

    /**
     * @return the employerWebsite
     */
    public String getEmployerWebsite() {
        return employerWebsite;
    }

    /**
     * @param employerWebsite the employerWebsite to set
     */
    public void setEmployerWebsite(String employerWebsite) {
        this.employerWebsite = employerWebsite;
    }

    /**
     * @return the jobTitle
     */
    public String getJobTitle() {
        return jobTitle;
    }

    /**
     * @param jobTitle the jobTitle to set
     */
    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    /**
     * @return the positionType
     */
    public String getPositionType() {
        return positionType;
    }

    /**
     * @param positionType the positionType to set
     */
    public void setPositionType(String positionType) {
        this.positionType = positionType;
    }

    /**
     * @return the jobDescription
     */
    public String getJobDescription() {
        return jobDescription;
    }

    /**
     * @param jobDescription the jobDescription to set
     */
    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    /**
     * @return the requirements
     */
    public String getRequirements() {
        return requirements;
    }

    /**
     * @param requirements the requirements to set
     */
    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }

    /**
     * @return the applicationDeadline
     */
    public java.sql.Date getApplicationDeadline() {
        return new java.sql.Date(applicationDeadline.getTime());
    }

    /**
     * @param applicationDeadline the applicationDeadline to set
     */
    public void setApplicationDeadline(Date applicationDeadline) {
        this.applicationDeadline = applicationDeadline;
    }

    /**
     * @return the postedBY
     */
    public int getPostedBY() {
        return postedBY;
    }

    /**
     * @param postedBY the postedBY to set
     */
    public void setPostedBY(int postedBY) {
        this.postedBY = postedBY;
    }

    /**
     * @return the jobID
     */
    public String getJobID() {
        return UUID.randomUUID().toString();
    }
    
    /**
     * @param job_id 
     */
    public void setJobID(String job_id){
        this.jobID = job_id;
    }

    /**
     * @return the category
     */
    public String getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(String category) {
        this.category = category;
    }

    /**
     * @return the location
     */
    public String getLocation() {
        return location;
    }

    /**
     * @param location the location to set
     */
    public void setLocation(String location) {
        this.location = location;
    }

    /**
     * @return the salary
     */
    public double getSalary() {
        return salary;
    }

    /**
     * @param salary the salary to set
     */
    public void setSalary(double salary) {
        this.salary = salary;
    }

     
}
