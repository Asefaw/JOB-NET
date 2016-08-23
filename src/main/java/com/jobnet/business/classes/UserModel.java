/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobnet.business.classes;

/**
 *
 * @author Asefaw Mekuria
 */
public class UserModel {
    
    private String userName;
    private String password; 
    private String role;
    private int userID;

    /**
     * @return the userName
     */
    public String getUserName() {
        return userName;
    }

    /**
     * @param userName the userName to set
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
    @Override
    public String toString() {
        return "LoginModel{" + "userName=" + userName + ", password=" + password + '}';
    }

    /**
     * @return the role
     */
    public String getRole() {
        return role;
    }

    /**
     * @param role the role to set
     */
    public void setRole(String role) {
        this.role = role;
    }
    // a method for registering a new user
    public boolean registerUser(String email, String pass,String role){
        if(email != null && pass != null && role != null){
        System.out.println(email);
        System.out.println(pass);
        System.out.println(role);
        return true;
        }
        return false;
    }
    
    public boolean authenticate(String user_name, String password){
        if(this.userName.equalsIgnoreCase(user_name) && this.password.equals(password)){
            return true;
        }else{
            return false;
        }
    }

    /**
     * @return the userID
     */
    public int getUserID() {
        return userID;
    }

    /**
     * @param userID the userID to set
     */
    public void setUserID(int userID) {
        this.userID = userID;
    }
 
}
