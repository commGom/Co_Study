package CoStudy.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import CoStudy.config.MySqlSessionFactory;
import CoStudy.domain.ApplyGroupMemberVO;
import CoStudy.domain.StudyGroupVO;
import CoStudy.mapper.StudyGroupMapper;

public class StudyGroupDao {
	
	private static StudyGroupDao sDao=new StudyGroupDao();
	
	public static StudyGroupDao getInstance() {
		return sDao;
	}
	
	public int insertStudyGroup(StudyGroupVO studyGroup) {
		int re=-1;
		SqlSession sqlSession=MySqlSessionFactory.getSession();
		System.out.println("dao:"+studyGroup);
		try {
			re=sqlSession.getMapper(StudyGroupMapper.class).insertStudyGroup(studyGroup);
			
			if(re==-1) {
				sqlSession.rollback();
			}else {
				sqlSession.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return re;
	}
	
	public List<StudyGroupVO> studyGroupList(int startRow){
		List<StudyGroupVO> studyGroupList = null;
		SqlSession sqlSession = MySqlSessionFactory.getSession();
		
		try {
			studyGroupList=sqlSession.getMapper(StudyGroupMapper.class).studyGroupList(new RowBounds(startRow,10));
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		
		return studyGroupList;
	}
	
	public StudyGroupVO studyGroupDetail(int studygroup_no) {
		StudyGroupVO studyGroupDetail = null;
		
		SqlSession sqlSession = MySqlSessionFactory.getSession();
		
		try {
			studyGroupDetail=sqlSession.getMapper(StudyGroupMapper.class).studyGroupDetail(studygroup_no);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		
		return studyGroupDetail;
	}
	
	public int countstudyGroupList() {
		SqlSession sqlSession = MySqlSessionFactory.getSession();
		int re=0;
		try {
			re=sqlSession.getMapper(StudyGroupMapper.class).countstudyGroupList();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return re;
	}

	public int insertApplyGroupStudy(ApplyGroupMemberVO applystudyGroup) {
		SqlSession sqlSession = MySqlSessionFactory.getSession();
		int re=-1;
		try {
			re=sqlSession.getMapper(StudyGroupMapper.class).insertApplyGroupStudy(applystudyGroup);
			
			if(re==-1) {
				sqlSession.rollback();
			}else {
				sqlSession.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return re;	
	}

	public int getGroupNo(String studygroup_name) {
		SqlSession sqlSession = MySqlSessionFactory.getSession();
		int re=-1;
		try {
			re=sqlSession.getMapper(StudyGroupMapper.class).getGroupNo(studygroup_name);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return re;	
	}
	
}
