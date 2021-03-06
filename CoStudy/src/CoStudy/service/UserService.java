package CoStudy.service;

import javax.servlet.http.HttpServletRequest;

import CoStudy.dao.UserDao;
import CoStudy.domain.LoginVO;
import CoStudy.domain.UserVO;

public class UserService {
	private static UserService u_service = new UserService();
	private static UserDao u_dao;

	public static UserService getInstance() {
		u_dao = u_dao.getInstance();
		return u_service;
	}

	public int insertUserService(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		UserVO user = new UserVO();

		user.setUser_id(request.getParameter("user_id"));
		user.setUser_pw(request.getParameter("user_pw"));
		user.setUser_lastName(request.getParameter("user_lastName"));
		user.setUser_firstName(request.getParameter("user_firstName"));
		user.setUser_phoneNo(request.getParameter("user_phoneNo"));
		user.setUser_address1(request.getParameter("addr2"));
		user.setUser_address2(request.getParameter("addr3"));
		user.setUser_post(request.getParameter("addr1"));
		user.setUser_birth(request.getParameter("user_birth"));
		user.setUser_email(request.getParameter("user_email"));
		user.setUser_register_date(request.getParameter("user_register_date"));
//		user.setCategory_no(2);
		user.setCategory_no(Integer.parseInt(request.getParameter("category_no")));
		System.out.println(user.getCategory_no());
		return u_dao.insertUser(user);
	}

	public UserVO login(HttpServletRequest request) throws Exception {
	
		
		LoginVO login = new LoginVO();
		
		login.setUserId(request.getParameter("userId"));
		login.setUserPw(request.getParameter("userPw"));
		return u_dao.login(login);
	}
}
