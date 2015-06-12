package edu.iiitb.actions;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import edu.iiitb.dao.LoginDao;
import edu.iiitb.model.LoginModel;

public class LoginAction extends ActionSupport implements SessionAware,ModelDriven<LoginModel>{

	private LoginModel model = new LoginModel();
	private LoginDao dao = new LoginDao();
	
	
	private Map<String,Object> sessionMap=null;  
	private SessionBean sessionBean=new SessionBean();
	public String execute()
	{
		String str = dao.Retrieve(model);
		if(str.equals("success"))
		{
			System.out.println(model.getUserName() + " in loginaction.java") ;
			sessionBean.setUserName(model.getUserName());
			sessionMap.put("Session", sessionBean);
			return "success";
		}
		else
			return "failure";
	}

	@Override
	public LoginModel getModel() {
		// TODO Auto-generated method stub
		return model;
	}

	@Override
	public void setSession(Map<String, Object> sessionMap) {
		// TODO Auto-generated method stub
		this.setSessionMap(sessionMap);
		
	}

	public Map<String,Object> getSessionMap() {
		return sessionMap;
	}

	public void setSessionMap(Map<String,Object> sessionMap) {
		this.sessionMap = sessionMap;
	}


	
}
