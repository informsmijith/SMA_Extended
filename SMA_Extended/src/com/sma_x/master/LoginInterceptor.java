/*
************************************************************
* Project Name			: Golfie
* Version			: 1.0
* Module Name			: 
* Class name			: LoginInterceptor
* Purpose of the class		: To filter the session (user state i.e Login or logout)
* Relationships with other 
* classes			: 
* 							    
* Coded by			: 		Sebin Thomas
* Creation date			:   08-10-2015
*
* Last Updation date		: 
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
package com.sma_x.master;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = 1L;
	/**
	 * Author:Sebin Thomas 
	 * purpose:Defines the Interceptor for checking the existance of the Session
	 * @return string
	 */
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> session = invocation.getInvocationContext().getSession();
		String loginId = (String) session.get("iduser");
		if (loginId == null) {
			
			Object action = invocation.getAction();
			if (action instanceof com.opensymphony.xwork2.ValidationAware) {
				((com.opensymphony.xwork2.ValidationAware) action).addActionError("Please Login to continue!");
			}
			return Action.LOGIN;
		} else {
			return invocation.invoke();
		}
	}

}
