package controller;

import controller.action.Action;
import controller.action.BoardWriteAction;
import controller.action.EditInfoAction;
import controller.action.JoinAction;
import controller.action.LoginAction;
import controller.action.boardWriteFormAction;

public class ActionFactory {
	
	private ActionFactory() {}
	private static ActionFactory instance = new ActionFactory();
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		if(command.equals("login")) return new LoginAction();
		else if(command.equals("join")) return new JoinAction();
		else if(command.equals("editInfo")) return new EditInfoAction();
		//else if(command.equals("boardUpdate")) return new BoardUpdateAction();
		else if(command.equals("boardWrite")) return new BoardWriteAction();
		else if(command.equals("boardWriteForm")) return new boardWriteFormAction();
		//else if(command.equals("boardDelete")) return new BoardDeleteAction();
		return null;
		
	}
	
}
