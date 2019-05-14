package com.zjk.controller;
import java.sql.*;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zjk.controller.BaseController;
import com.zjk.model.User;

@Controller
@RequestMapping(value="/login")
public class LoginController extends BaseController {
	/**
	 * 方法功能说明：  
	 * @参数： @param user
	 * @参数： @param request
	 * @参数： @return      
	 * @return String
	 */
	@RequestMapping("/userlogin")
	public String userlogin(User user,HttpServletRequest request){
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(30*60);
		
		List<User> uu = userService.findUserByName(user.getUsername());
		if(uu != null && uu.size() > 0&&user.getPassword().equals(uu.get(0).getPassword())){
			User u = uu.get(0);
			session.removeAttribute("wuquanxian");
			session.setAttribute("role", u.getRole());
			session.setAttribute("user", uu);
			session.setAttribute("username", user.getUsername());
			return "index";
		}else {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/travel","root","1234");
				PreparedStatement psta = conn.prepareStatement("select password from manage where username = ?");
				psta.setString(1, user.getUsername());
				ResultSet rs = psta.executeQuery();
				if(rs.next()) {
					String str = rs.getString("password");
					if(user.getPassword().equals(str)) {
						session.setAttribute("username", user.getUsername());
						return "totaljsp/manage/man_index";
					}
				}
				} catch (SQLException e) {
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
		}
		return "totaljsp/manage/login";
	}
	
	/**
	 * 方法功能说明：  
	 * @参数： @param request
	 * @参数： @return      
	 * @return String
	 */
	@RequestMapping("/outlogin")
	public String outlogin(HttpServletRequest request){
		HttpSession session = request.getSession();
		 session.removeAttribute("chenggong");
		session.removeAttribute("role");
		session.removeAttribute("username");
		session.removeAttribute("wuquanxian");
		return "totaljsp/manage/login";
	}
}
