package edu.iiitb.actions;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import edu.iiitb.dao.RegisterDao;
import edu.iiitb.model.RegisterModel;

public class RegisterAction extends ActionSupport implements SessionAware,ModelDriven<RegisterModel>{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private RegisterModel model = new RegisterModel();
	private RegisterDao dao = new RegisterDao();
	private String userName;
	
	private Map<String,Object> sessionMap=null;  
	private SessionBean sessionBean=new SessionBean();
	
	public void setSesssion(Map<String,Object>map){
		this.sessionMap = map;
		this.sessionBean = (SessionBean)sessionMap.get("Session");
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	private void  setSessionValues(){
		this.userName = sessionBean.getUserName();
	}
	public String execute()
	{
		System.out.println("i m RegisterAction");
		dao.insert(model);
		return "success";
	}
	
	public String execute_storeresult()
	{	
		sessionBean.setUserName(model.getUserName());
		sessionMap.put("Session", sessionBean);
		System.out.println("i m RegisterAction");
		dao.insertFavourite(model);
		return "success";
	}
	
	
	@Override
	public RegisterModel getModel() {
		// TODO Auto-generated method stub
		return model;
	}
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
