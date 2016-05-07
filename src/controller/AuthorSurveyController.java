package controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import repository.AuthorSuveyRepository;

@SuppressWarnings("serial")

public class AuthorSurveyController extends HttpServlet {
	private AuthorSuveyRepository authorSurveyRepository;

	public AuthorSurveyController() {
		super();
		authorSurveyRepository = new AuthorSuveyRepository();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		System.out.println("In get");
		System.out.println(request.getParameter("ID"));
		request.getSession().setAttribute("article_id", Integer.parseInt(request.getParameter("ID")));
		RequestDispatcher view = request.getRequestDispatcher("content/form1.jsp");
		view.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("In post");
		//String pageName = request.getParameter("pageName");
		
		String sizes = request.getParameter("optionsRadios");
		System.out.println(sizes);
		request.getSession().setAttribute("sizes", sizes);
		
		String noOfStudies = (String) request.getSession().getAttribute("noOfStudies");
		System.out.println(Integer.parseInt(noOfStudies));
		
		String[] fields = (String[]) request.getSession().getAttribute("fields");
		System.out.println(Arrays.toString(fields));

		String design =  (String) request.getSession().getAttribute("design");
		System.out.println(design);

		String data =  (String) request.getSession().getAttribute("data");
		System.out.println(data);

		String noOfHypotheses =  (String) request.getSession().getAttribute("noOfHypotheses");
		System.out.println(noOfHypotheses);

		String hypos[] = (String[]) request.getSession().getAttribute("hypos");
		System.out.println(Arrays.toString(hypos));

		String noOfDV =  (String) request.getSession().getAttribute("noOfDV");
		System.out.println(noOfDV);

		String dvs[] = (String[]) request.getSession().getAttribute("dvs");
		System.out.println(Arrays.toString(dvs));

		String noOfIV =  (String) request.getSession().getAttribute("noOfIV");
		System.out.println(noOfIV);

		String ivs[] = (String[]) request.getSession().getAttribute("ivs");
		System.out.println(Arrays.toString(ivs));
		
		String test =  (String) request.getSession().getAttribute("test");
		System.out.println(test);

		String scale =  (String) request.getSession().getAttribute("scale");
		System.out.println(scale);

		String noOfGroups =  (String) request.getSession().getAttribute("noOfGroups");
		System.out.println(noOfGroups);

		String groupAssignment =  (String) request.getSession().getAttribute("groupAssignment");
		System.out.println(groupAssignment);

		String conditions =  (String) request.getSession().getAttribute("conditions");
		System.out.println(conditions);

		String subjects =  (String) request.getSession().getAttribute("subjects");
		System.out.println(subjects);
		Integer articleId =  (Integer) request.getSession().getAttribute("article_id");
		System.out.println("ID:" + articleId);
	    authorSurveyRepository.saveAuthorReview(Integer.parseInt(noOfStudies), design, data, Integer.parseInt(noOfHypotheses),
				Integer.parseInt(noOfDV), Integer.parseInt(noOfIV), test, scale, Integer.parseInt(noOfGroups), groupAssignment, 
				conditions, subjects, sizes, fields, hypos, dvs, ivs, articleId);
		RequestDispatcher view = request.getRequestDispatcher("index.jsp");
		view.forward(request, response);
	}
}
