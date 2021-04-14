package CoStudy.action.group;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CoStudy.action.Action;
import CoStudy.action.ActionForward;
import CoStudy.domain.GroupPageBoardVO;
import CoStudy.service.GroupPageService;

public class GroupBoardListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		GroupPageService service=GroupPageService.getInstance();
		
		List<GroupPageBoardVO> list=service.groupBoardService(request);
		request.setAttribute("list", list);
		
		forward.setPath("/view/group/groupMain.jsp");
		forward.setRedirect(false);

		return forward;
	}

}
