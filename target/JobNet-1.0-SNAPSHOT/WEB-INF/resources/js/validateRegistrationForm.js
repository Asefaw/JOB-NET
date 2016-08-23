/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validateRegistrationForm()
      {
      
        var x = document.loginForm.userName.value;
        var atpos = x.indexOf("@");
        var dotpos = x.lastIndexOf(".");
        var pass = document.loginForm.password.value;
        var Cpass = document.loginForm.confirmPassword.value;
        
         if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
            alert("Not a valid e-mail address");
            return false;
         }
         
         if( document.loginForm.password.value === "" )
         {
            alert( "Please provide your Password!" );
            document.loginForm.password.focus() ;
            return false;
         }
         
         if( pass !== Cpass)
         {
            alert( "Password Doesn't Match" ); 
            document.loginForm.password.focus() ;
            return false;
         }
         
         if( document.loginForm.role.value === "" )
         {
            alert( "Please Select Role!" );
            return false;
         }
         return( true );
      }
