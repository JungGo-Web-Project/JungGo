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
		else if(command.equals("boardView")) return new BoardViewAction();
		else if(command.equals("boardUpdate")) return new BoardUpdateAction();
		else if(command.equals("boardWrite")) return new BoardWriteAction();
		
		return null;
	}
	
}
