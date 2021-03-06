package cn.gzx.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * 读取Properties文件的测试类
 * @author 剽悍一小兔
 */
public class TestProperties {
	public static void main(String[] args) {
		InputStream inputStream =  TestProperties.class.getClassLoader().getResourceAsStream("jdbc.properties");
		Properties p = new Properties();
		try {
			p.load(inputStream);
			System.out.println(p);
			System.out.println(p.getProperty("db.username"));
			System.out.println(p.getProperty("db.password"));
			System.out.println(p.getProperty("db.dataBaseName"));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
