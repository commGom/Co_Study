package CoStudy.action.studyGroup;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CoStudy.action.Action;
import CoStudy.action.ActionForward;
import CoStudy.domain.StudyGroupVO;
import CoStudy.service.StudyGroupService;

public class StudyGroupDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		forward.setPath("/view/studyGroup/studyGroupDetail.jsp");
		forward.setRedirect(false);
		StudyGroupService service=StudyGroupService.getInstance();
		int studygroup_no = Integer.parseInt(request.getParameter("studygroup_no"));
		System.out.println(studygroup_no);
		StudyGroupVO studyGroupDetail = service.studyGroupDetail(studygroup_no);
		request.setAttribute("studyGroupDetail", studyGroupDetail);
		
		
		return forward;
		
		
		
	}

}