/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lrweb;

/**
 *
 * @author rishabh
 */
public class UserBean {
	
      private String username;
      private String password;
      private String name;
      public boolean valid;
      private String userType;
	
	
      public String getName() {
         return name;
	}

      public void setName(String newName) {
         name = newName;
	}
      
     
      public String getPassword() {
         return password;
	}

      public void setPassword(String newPassword) {
         password = newPassword;
	}
	
			
      public String getUsername() {
         return username;
			}

      public void setUserName(String newUsername) {
         username = newUsername;
			}
      
      public String getUserType(){
          return userType;
      }
      
      public void setUserType(String newUserType){
          userType=newUserType;
      }
				
      public boolean isValid() {
         return valid;
	}

      public void setValid(boolean newValid) {
         valid = newValid;
	}	
}
