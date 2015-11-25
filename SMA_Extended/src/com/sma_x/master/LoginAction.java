package com.sma_x.master;
/*
************************************************************
* Project Name			: SMA_Extended
* Version			    : 1.0
* Module Name			: Login
* Class name			: LoginAction
* Purpose of the class  : Check User Login and create session:userid
* Relationships with other 
* classes				: 
* 							    
* Coded by				: Ancy Mathew
* Creation date			: 24/11/2015
*
* Last Updation date	: 24/11/2015
*
* Honor Code: I pledge that this program represents my own
*   program code. I received help from - Smijith K
*   in designing and debugging my program.
*
* Copyright @ 2015-2016 
* All Rights Reserved.
*  --------------------------------------------------------
* |-----------SummerSoft Private Limited ------------------| 
*  --------------------------------------------------------
*   B9,9th Floor,Heavenly Plaza,Vazhakala,Kakanad-682021
************************************************************
*/
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.sma_x.common.Dbconnection;

public class LoginAction extends ActionSupport implements SessionAware {
	private String strUsername;
	private String strPassword;
	Dbconnection dbc;
	private Map<String, Object> session;
	
	private static final long serialVersionUID = 1L;
	/**
	 * Author:Ancy Mathew 
	 * purpose:check user login with username and password
	 * @return success
	 */
	public String userLogin() {
		try {
			dbc = new Dbconnection();
			int u_count = 0;
			strUsername = strUsername.trim();
			strPassword = strPassword.trim();
			String query = "select count(*) as u_count from tbl_user_master where USER_NAME='" + strUsername
					+ "' and USER_PASS='" + strPassword + "'";
			ResultSet rs = dbc.select(query);
			while (rs.next()) {
				u_count = rs.getInt(1);
			}
			if (u_count > 0) {
				String uid=null;
				String sql="SELECT USER_MASTER_ID FROM tbl_user_master WHERE USER_NAME='" + strUsername+ "' and USER_PASS='" + strPassword + "'";
				ResultSet rs1 = dbc.select(sql);
				while (rs1.next()) {
					uid = rs1.getString(1);
				}
				dbc.close();
				session.put("iduser",uid );
				return SUCCESS;
			} else {
				addActionError("Invalid Username or Password!");
				return ERROR;

			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return ERROR;

	}
		/** Author:Ancy Mathew 
	    *purpose: To logout the user
	    * @return success
	    */
	public String userLogout(){
            session.remove("iduser");
            session.clear();
            addActionMessage("You have been Successfully Logged Out");
            return SUCCESS;
	}
	public String login(){
		return SUCCESS;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getStrUsername() {
		return strUsername;
	}

	public void setStrUsername(String strUsername) {
		this.strUsername = strUsername;
	}

	public String getStrPassword() {
		return strPassword;
	}

	public void setStrPassword(String strPassword) {
		this.strPassword = strPassword;
	}
}
