package CoStudy.mapper;

import java.util.List;

import CoStudy.domain.StudyGroupVO;
import CoStudy.domain.StudyNoteVO;
import CoStudy.domain.UserVO;

public interface MyPageMapper {
	int updateUser(UserVO user);
	int writeStudyDiary(StudyNoteVO diary);
	List<StudyNoteVO> studyDiaryList(int user_no);
	List<StudyGroupVO> joinGroupList(int user_no);
}
