package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Article;
import model.AuthorSurvey;
import repository.AuthorSuveyRepository;

@WebServlet("/Articles")
public class ArticleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AuthorSuveyRepository authorSurveyRepository;
	public ArticleController() {
		super();
		authorSurveyRepository = new AuthorSuveyRepository();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Article> list = null;
		String act = request.getParameter("act");
		if (act == null) {
			//no button has been selected
		} else if (act.equals("find")) {	
			try {
				list = authorSurveyRepository.selectRecordsFromTable();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(list != null) {
				request.setAttribute("list", list);
			}
			RequestDispatcher view = request.getRequestDispatcher("content/articleslist.jsp");
			view.forward(request, response);
		} else if (act.equals("review")) {
			try {
				list = authorSurveyRepository.selectRecordsFromTable();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(list != null) {
				request.setAttribute("list", list);
			}
			RequestDispatcher view = request.getRequestDispatcher("content/reviewarticles.jsp");
			view.forward(request, response);
		} else {
			//someone has altered the HTML and sent a different value!
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("In post");
		System.out.println(request.getParameter("ID"));
		request.setAttribute("article_id", Integer.parseInt(request.getParameter("ID")));
		request.setAttribute("title", (String) request.getParameter("title"));
		AuthorSurvey as = authorSurveyRepository.findByArticleId(Integer.parseInt(request.getParameter("ID")));
		request.setAttribute("review", as);
		RequestDispatcher view = request.getRequestDispatcher("content/viewauthorreview.jsp");
		
		view.forward(request, response);

	}
}
