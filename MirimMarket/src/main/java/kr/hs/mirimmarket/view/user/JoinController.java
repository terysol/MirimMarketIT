package kr.hs.mirimmarket.view.user;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("*.do")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public JoinController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void forward(HttpServletRequest request, HttpServletResponse response,String url) throws ServletException, IOException{
    	RequestDispatcher rd=request.getRequestDispatcher(url);
    	rd.forward(request, response);
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		reqPro(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		reqPro(request, response);
	}
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String RequestURI=request.getRequestURI();
		
		 if (RequestURI.indexOf("/login_ok.do")!=-1) {
		 }
	}

}
