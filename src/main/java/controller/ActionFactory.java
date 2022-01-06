package controller;

import contoller.action.Action;
import contoller.action.JoinAction;
import contoller.action.LoginAction;

public class ActionFactory {
	
	private ActionFactory() {}
	private static ActionFactory instance = new ActionFactory();
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		if(command.equals("login")) return new LoginAction();
		else if(command.equals("join")) return new JoinAction();
		
		return null;
	}
	
}
