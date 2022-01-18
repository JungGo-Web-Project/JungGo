package controller;

import controller.action.Action;
import controller.action.BoardUpdateAction;
import controller.action.DeleteAccountAction;
import controller.action.EditInfoAction;
import controller.action.JoinAction;
import controller.action.LoginAction;
import controller.action.LogoutAction;
import controller.action.boardCheckAction;
import controller.action.boardListAction;
import controller.action.boardWriteFormAction;
import controller.action.itemWriteFormAction;
import controller.action.pwCheckForEditAction;

public class ActionFactory {
	
	private ActionFactory() {}
	private static ActionFactory instance = new ActionFactory();
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		if(command.equals("login")) return new LoginAction();
		else if(command.equals("logout")) return new LogoutAction();
		else if(command.equals("join")) return new JoinAction();
		else if(command.equals("pwCheck")) return new pwCheckForEditAction();
		else if(command.equals("editInfo")) return new EditInfoAction();
		else if(command.equals("deleteAccount")) return new DeleteAccountAction();
		else if(command.equals("boardList")) return new boardListAction();
		else if(command.equals("boardUpdate")) return new BoardUpdateAction();
		else if(command.equals("boardWriteForm")) return new boardWriteFormAction();
		else if(command.equals("boardCheck")) return new boardCheckAction();
		else if(command.equals("itemWriteForm")) return new itemWriteFormAction();
		return null;
		
	}
	
}
