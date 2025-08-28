import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/submit-form")
public class submitForm extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// Get all parameters from the form submission
		String firstNameString = req.getParameter("firstName");
		String lastNameString = req.getParameter("lastName"); 
		String emailString = req.getParameter("email");
		String hearAboutUs = req.getParameter("source");
		String contactMethod = req.getParameter("contactMethod");
		
		// Checkboxes return "on" or null
		String likeUpdates = req.getParameter("likeUpdate");
		String emailAnnouncements = req.getParameter("emailAnnouncements"); 

		// Set attributes to pass data to the JSP
		req.setAttribute("firstName", firstNameString);
		req.setAttribute("lastName", lastNameString);
		req.setAttribute("email", emailString);
		req.setAttribute("hearAboutUs", hearAboutUs);
		req.setAttribute("contactMethod", contactMethod);
		
		// Handle checkbox values
		if (likeUpdates != null) {
			req.setAttribute("likeUpdates", likeUpdates);
		} else {
			req.setAttribute("likeUpdates", "No");
		}
		
		if (emailAnnouncements != null) {
			req.setAttribute("emailAnnouncements", emailString);
		} else {
			req.setAttribute("emailAnnouncements", "No");
		}
		
		// Forward the request to a JSP file to display the data
		RequestDispatcher dispatcher = req.getRequestDispatcher("/successfully.jsp");
		dispatcher.forward(req, res);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// Redirect to the form page or display an error for direct access
		res.sendRedirect("/Murach/survey.html"); // Assuming your form is at this path
	}
}