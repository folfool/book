package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Customer;

public class CustomerDAO extends DAO {
	public Customer search(String login, String password)
			throws Exception {
		Customer customer = null;

		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement(
				"select * from customer where login=? and password=?");
		st.setString(1, login);
		st.setString(2, password);
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			customer = new Customer();
			customer.setId(rs.getInt("id"));
			customer.setLogin(rs.getString("login"));
			customer.setPassword(rs.getString("password"));
		}

		st.close();
		con.close();
		return customer;
	}

	public Customer search(String login)
			throws Exception {
		Customer customer = null;

		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement(
				"select * from customer where login=?");
		st.setString(1, login);
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			customer = new Customer();
			customer.setId(rs.getInt("id"));
			customer.setLogin(rs.getString("login"));
			customer.setPassword(rs.getString("password"));
		}

		st.close();
		con.close();
		return customer;
	}

	public int updatePassword(String login, String password, String newPassword) throws Exception {

		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement("update customer set password=? where login=? and password=?");
		st.setString(1, newPassword);
		st.setString(2, login);
		st.setString(3, password);

		int line = st.executeUpdate();
		st.close();
		con.close();

		return line;
	}

	public int insert(String login, String password) throws Exception {

		Connection con = getConnection();
		PreparedStatement st;
		st = con.prepareStatement("insert into customer values (null,?,?)");
		st.setString(1, login);
		st.setString(2, password);

		int line = st.executeUpdate();

		st.close();
		con.close();

		return line;
	}
}