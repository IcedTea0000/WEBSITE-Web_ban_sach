package controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import service.UserService;
import service.impl.UserServiceImpl;

@WebServlet (urlPatterns= {"/admin/user/search"})
public class SearchUserController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher=req.getRequestDispatcher("/view/admin/user/SearchUser.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<User> userList;
		UserService userService=UserServiceImpl.getInstance();
		
		String searchType=req.getParameter("search-type");
		String keyword=req.getParameter("keyword");
		
		if (searchType.equals("by-username")) {
			userList=userService.searchByUsername(keyword);
			
		}
		else {
			userList=userService.searchByName(keyword);
		}
		req.setAttribute("userList", userList);
		
		RequestDispatcher dispatcher=req.getRequestDispatcher("/view/admin/user/SearchResultUser.jsp");
		dispatcher.forward(req, resp);		
	}
	
}
