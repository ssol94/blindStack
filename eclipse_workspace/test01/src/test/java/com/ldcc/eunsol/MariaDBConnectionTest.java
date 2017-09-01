package com.ldcc.eunsol;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MariaDBConnectionTest {
	private static final String DRIVER="org.mariadb.jdbc.Driver";
	private static final String URL="jdbc:mariadb://127.0.0.1:3306/test";
	private static final String USER="root";
	private static final String PW="lotte";
	
	@Test
	public void testConnection() throws Exception{
		Class.forName(DRIVER);
		try(Connection con = DriverManager.getConnection(URL, USER, PW)) {
			System.out.println(con);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
