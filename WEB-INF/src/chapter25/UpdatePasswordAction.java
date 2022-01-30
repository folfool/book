package chapter25;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Customer;
import dao.CustomerDAO;
import tool.Action;

public class UpdatePasswordAction extends Action {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();

		Customer c = (Customer) session.getAttribute("customer");
		String password = request.getParameter("password");
		String newPassword = request.getParameter("new_password");
		String newPassword2 = request.getParameter("new_password2");

		CustomerDAO dao = new CustomerDAO();

		if (!newPassword.equals(newPassword2) || c == null
				 || newPassword.isEmpty()) {
			request.setAttribute("error", 1);
			return "update-password.jsp";
		}else if(dao.updatePassword(c.getLogin(), password, newPassword) != 1) {
			return "update-password.jsp";
		}

		c.setPassword(newPassword);

		return "update-password-out.jsp";
	}

}