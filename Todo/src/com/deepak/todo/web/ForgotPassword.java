package com.deepak.todo.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.deepak.todo.utilities.JDBCUtils;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/forgot_password")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ForgotPassword() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String username = request.getParameter("username");
		String newPassword = request.getParameter("new_password");
		String cnfPassword = request.getParameter("cnf_password");
		int row = 0;

		try (Connection connection = JDBCUtils.getConnection(); Statement statement = connection.createStatement()) {
			ResultSet rs = statement.executeQuery("select username from users");
			while (rs.next()) {
				if (rs.getString("username").equals(username)) {
					PreparedStatement preparedStatement = connection
							.prepareStatement("update users set password = ? where username = ?");
					if (newPassword.equals(cnfPassword)) {
						preparedStatement.setString(1, cnfPassword);
						preparedStatement.setString(2, username);

						row = preparedStatement.executeUpdate();
						if (row == 1) {
							out.println("<h1><p style='color:green'>Password Changed Successfully :)</p></h1>");
							out.print("<a href='login/login.jsp'>Login Page</a>");
						}
					} else {
						row = 2;
					}
				}
			}
			if (row == 0) {
				out.println("<h1><p style='color:red'>User Not Found !!</p></h1>");
				out.print("<a href='forgot_password.jsp'>Forgot Password Page</a>");
			} else if (row == 2) {
				out.println("<h1><p style='color:red'>New Password & Confirm Password Mismatched !!</p></h1>");
				out.print("<a href='forgot_password.jsp'>Forgot Password Page</a>");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection
						.prepareStatement("update users set password = ? where username = ?")) {

			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();

		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
