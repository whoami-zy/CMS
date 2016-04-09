package com.whoami.SpringHelper;

import com.whoami.daodo.UserDaoDO;
import com.whoami.po.user;

public class userSpringDoHelp{

		private user u;
		private UserDaoDO userDo;
		
		public user getU() {
			return u;
		}

		public void setU(user u) {
			this.u = u;
		}

		public UserDaoDO getUserDo() {
			return userDo;
		}

		public void setUserDo(UserDaoDO userDo) {
			this.userDo = userDo;
		}

		public String resgin(){
			boolean flag=userDo.resgion(u);
			if(flag){
				return "success";
			}
			else{
			return "false";
			}
		}
		public boolean userLogin(){
			
			return userDo.login(u.getU_name(), u.getU_password());		
		}
		public boolean userUpdata(){
			
			return userDo.updateuser(u);
		}
}
