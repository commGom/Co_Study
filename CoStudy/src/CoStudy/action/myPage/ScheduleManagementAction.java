package CoStudy.action.myPage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CoStudy.action.Action;
import CoStudy.action.ActionForward;

public class ScheduleManagementAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/view/myPage/scheduleManagement.jsp");
		return forward;
		
	}
}
