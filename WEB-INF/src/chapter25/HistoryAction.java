package chapter25;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Customer;
import bean.Item;
import dao.PurchaseDAO;
import tool.Action;

public class HistoryAction extends Action {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();

		Customer c = (Customer) session.getAttribute("customer"); //ログインしてる場合、cの中にログイン情報（id,login,pass）が入っている

		if (c == null) {
			request.setAttribute("error", 1);
			return "history-out.jsp";
		}
		PurchaseDAO dao = new PurchaseDAO();
		List<Item> history = dao.search(c.getId()); //daoからsearchメソッドを呼ぶ。(c.getId())で取れたものをsearchで検索

		if (history.size() > 0) {
			request.setAttribute("history", history); //"history"って名前でhistoryを登録する
		}
		return "history-out.jsp";
	}

}
