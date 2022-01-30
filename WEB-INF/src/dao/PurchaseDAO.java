package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import bean.Customer;
import bean.Item;
import bean.Product;

public class PurchaseDAO extends DAO {

	public List<Item> search(int login_id) throws Exception {

		List<Item> history = new ArrayList<Item>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm"); //SimpleDateFormatという日付フォーマット

		Connection con = getConnection();
		PreparedStatement st = con.prepareStatement(
				"select * from purchase where login_id=? order by date desc"); //purchaseは注文情報を保存しているテーブル
		st.setInt(1, login_id);
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			Item i = new Item();
			i.setProduct(new Product());
			i.getProduct().setId(rs.getInt("product_id"));
			i.getProduct().setName(rs.getString("product_name"));
			i.getProduct().setPrice(rs.getInt("product_price"));
			i.setCount(rs.getInt("product_count"));
			i.setLogin_id(rs.getInt("login_id"));
			i.setDateTimeString(sdf.format(rs.getTimestamp("date").getTime()));
			history.add(i);
		}

		return history;
	}

	public boolean insert(List<Item> cart, String name, String address, Customer c) throws Exception {
		//↑どのユーザーが購入したのか知りたいため、「Customer c」を追加
		Connection con = getConnection();
		con.setAutoCommit(false);

		Timestamp ts = new Timestamp(new java.util.Date().getTime()); //日時情報を出すための

		for (Item item : cart) {
			PreparedStatement st = con.prepareStatement(
					"insert into purchase values(null, ?, ?, ?, ?, ?, ?, ?, ?)");
			Product p = item.getProduct();
			st.setInt(1, p.getId());
			st.setString(2, p.getName());
			st.setInt(3, p.getPrice());
			st.setInt(4, item.getCount());
			st.setInt(5, c.getId());
			st.setTimestamp(6, ts);
			st.setString(7, name);
			st.setString(8, address);
			int line = st.executeUpdate();
			st.close();

			if (line != 1) {
				con.rollback();
				con.setAutoCommit(true);
				con.close();
				return false;
			}
		}

		con.commit();
		con.setAutoCommit(true);
		con.close();
		return true;
	}
}