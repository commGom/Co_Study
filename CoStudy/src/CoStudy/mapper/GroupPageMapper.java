package CoStudy.mapper;

import java.util.List;

import CoStudy.domain.ApplyGroupMemberVO;
import CoStudy.domain.GroupPageBoardVO;

public interface GroupPageMapper {

	
	int insertGroupBoard(GroupPageBoardVO groupPageBoardVO);
	List<GroupPageBoardVO> selectGroupBoard(int studyGroup_no);
	List<GroupPageBoardVO> groupBoardList();
	List<ApplyGroupMemberVO> selectApplyList(int studyGroup_no);
	int acceptMember(ApplyGroupMemberVO vo);
	int insertAcceptMember(ApplyGroupMemberVO vo);
	int refuseMember(int user_no);
}


