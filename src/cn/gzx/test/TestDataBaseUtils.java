package cn.gzx.test;

import java.sql.Connection;

import cn.gzx.util.DataBaseUtils;

public class TestDataBaseUtils {

	public static void main(String[] args) {
		Connection conn = DataBaseUtils.getConnection();
		System.out.println(conn);
		
	}
}
