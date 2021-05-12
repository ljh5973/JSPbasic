package forward.quiz;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/abc")
public class forward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public forward() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String name=request.getParameter("name");
		String kor=request.getParameter("kor");
		String math=request.getParameter("math");
		String eng=request.getParameter("eng");
		
		int k=Integer.parseInt(kor);
		int m=Integer.parseInt(math);
		int e=Integer.parseInt(eng);
		
		int avg=(k+m+e)/3;
		
		request.setAttribute("avg1",avg);
		
		if(avg>=60) {
		RequestDispatcher rd = request.getRequestDispatcher("actionTag/quiz01_01_ok.jsp");
			rd.include(request, response);
			
		} else {
				RequestDispatcher rd = request.getRequestDispatcher("actionTag/quiz01_01_no.jsp");
					rd.include(request, response);
		
				}
			}
		}
	




