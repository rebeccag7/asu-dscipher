package repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Article;
import model.AuthorSurvey;
import util.DbUtil;

public class AuthorSuveyRepository  {
	private Connection dbConnection;

	public AuthorSuveyRepository() {
		dbConnection = DbUtil.getConnection();
	}

	public void saveAuthorReview(int noOfStudies, String design, String data, int noOfHypotheses, int noOfDV,
			int noOfIV, String test, String scale, int noOfGroups, String groupAssignment, 
			String conditions, String subjects, String sizes, String[] fields, String hypos[], String dvs[], String ivs[], int articleId) {
		
		System.out.println("Article ID: " + articleId);
		try {
			PreparedStatement prepStatement = dbConnection.prepareStatement("insert into author_review(no_of_studies, research_design, "
					+ "type_of_data, no_of_hypothesis, no_of_dv, no_of_iv,"
					+ " statistical_test, scale_of_msrd_vrbl, no_of_groups, "
					+ " grp_assignment, exposure_to_cond, no_of_sub_per_grp, effect_sizes, field_of_study, article_id)"
					+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?); ", Statement.RETURN_GENERATED_KEYS);
			prepStatement.setInt(1, noOfStudies);
			prepStatement.setString(2, design);
			prepStatement.setString(3, data);
			prepStatement.setInt(4, noOfHypotheses);
			prepStatement.setInt(5, noOfDV);
			prepStatement.setInt(6, noOfIV);
			prepStatement.setString(7, test);
			prepStatement.setString(8, scale);
			prepStatement.setInt(9, noOfGroups);
			prepStatement.setString(10, groupAssignment);
			prepStatement.setString(11, conditions);
			prepStatement.setString(12, subjects);
			prepStatement.setString(13, sizes);
			StringBuffer fieldsStr = new StringBuffer();
			for (String val : fields) {
				fieldsStr.append(val + ", ");			
			}
			prepStatement.setString(14, fieldsStr.toString());
			prepStatement.setInt(15, articleId);
			prepStatement.executeUpdate();

			try (ResultSet generatedKeys = prepStatement.getGeneratedKeys()) {
	            if (generatedKeys.next()) {
	                System.out.println((generatedKeys.getLong(1)));
	                int number = (int) generatedKeys.getLong(1);
	                for (int i = 0; i < hypos.length; i++) {
	                	hypothesisSave(number, i + 1, hypos[i]);
					}
	                for (int i = 0; i < dvs.length; i++) {
	                	dependentVariableSave(number, i + 1, dvs[i]);
					}
	                for (int i = 0; i < ivs.length; i++) {
	                	independentVariableSave(number, i + 1, ivs[i]);
					}
	            }
	            else {
	                throw new SQLException("Creating user failed, no ID obtained.");
	            }
	        }
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	
	public void hypothesisSave(int number, int no, String hypos) {
		try {
			PreparedStatement prepStatement = dbConnection.prepareStatement("insert into author_review_hypothesis(author_review_id, "
					+ "hypothesis_no, hypothesis_statement)"
					+ " values (?, ?, ?); ");
			prepStatement.setInt(1, number);
			prepStatement.setInt(2, no);
			prepStatement.setString(3, hypos);
			prepStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	
	public void dependentVariableSave(int number, int no, String dvs) {
		try {
			PreparedStatement prepStatement = dbConnection.prepareStatement("insert into dependent_variables(author_review_id, "
					+ "dependent_var_no, dependent_var_def)"
					+ " values (?, ?, ?); ");
			prepStatement.setInt(1, number);
			prepStatement.setInt(2, no);
			prepStatement.setString(3, dvs);
			prepStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}

	public void independentVariableSave(int number, int no, String ivs) {
		try {
			PreparedStatement prepStatement = dbConnection.prepareStatement("insert into independent_variables(author_review_id, "
					+ "independent_var_no, independent_var_def)"
					+ " values (?, ?, ?); ");
			prepStatement.setInt(1, number);
			prepStatement.setInt(2, no);
			prepStatement.setString(3, ivs);
			prepStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}

	public ArrayList<Article> selectRecordsFromTable() throws SQLException {
		PreparedStatement preparedStatement = null;
		String selectSQL = "SELECT * FROM articles;";
		ArrayList<Article> list = new ArrayList<>();
		try {
			preparedStatement = dbConnection.prepareStatement(selectSQL);
			// execute select SQL statement
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				Article article = new Article();
				article.setId(rs.getInt("id"));
				article.setTitle(rs.getString("name"));
				article.setYear(rs.getInt("year"));
				article.setType(rs.getString("type"));
				article.setAbstractText(rs.getString("abstract"));
				article.setWebURL(rs.getString("web_url"));
				list.add(article);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			if (preparedStatement != null) {
				preparedStatement.close();
			}
		}
		return list;
	}
	
	public AuthorSurvey findByArticleId(Integer id) {
		AuthorSurvey a = new AuthorSurvey();
		PreparedStatement preparedStatement = null;
	      try { 
	          preparedStatement = dbConnection.prepareStatement("select * from author_review where article_id = ?");
	          preparedStatement.setInt(1, id);           
	          
	          ResultSet rs = preparedStatement.executeQuery();
	          while (rs.next()) {
					a.setNoOfStudies(rs.getInt("no_of_studies"));
					a.setDesign(rs.getString("research_design"));	
					a.setData(rs.getString("type_of_data"));
					a.setNoOfHypotheses(rs.getInt("no_of_hypothesis"));
					a.setNoOfDV(rs.getInt("no_of_dv"));
					a.setNoOfIV(rs.getInt("no_of_iv"));
					a.setTest(rs.getString("statistical_test"));
					a.setScale(rs.getString("scale_of_msrd_vrbl"));
					a.setNoOfSubjects(rs.getString("no_of_sub_per_grp"));
					a.setConditions(rs.getString("exposure_to_cond"));
					a.setSizes(rs.getString("effect_sizes"));
				}
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			} finally {
				if (preparedStatement != null) {
					try {
						preparedStatement.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
	      return a;
	  }
}
