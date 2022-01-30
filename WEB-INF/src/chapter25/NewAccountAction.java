package chapter25;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Customer;
import dao.CustomerDAO;
import tool.Action;

public class NewAccountAction extends Action {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();

		String login = request.getParameter("login");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");

		Integer error = 0;

		CustomerDAO dao = new CustomerDAO();

		if (dao.search(login) != null) { //指定したloginがcustomerに存在しないときはnull。searchメソッドはCustomerDAOの中にある
			error += 1;
		}

		if (!password.equals(password2) || password.isEmpty() && password2.isEmpty()) { //passwordとpassword2が等しくなかったときfalse（！で反転のため）
			error += 10;
		}

		if (error == 0 && dao.insert(login, password) != 1) { //insertで挿入。成功したら1。insertメソッドはCustomerDAOの中にある
			error += 100;
		}

		if (error != 0) {
			request.setAttribute("error", error); //errorが0じゃなかったら何らかのエラーがある
			return "new-account.jsp";
		}

		Customer c = dao.search(login);
		session.setAttribute("customer", c); //ついでにログインする

		return "new-account-out.jsp";
	}

}
