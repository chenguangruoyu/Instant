package cn.gzx.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

/**
 * 智能聊天系统工具类
 * @author gzx
 * @version v1.0
 */
public class RobotChatUtil {
	
	public static String getResult(String message){
		
		//存储机器人回复信息的容器
		StringBuffer buffer = new StringBuffer();
		URL urlObj = null;
		URLConnection uc = null;
		InputStreamReader reader = null;
		BufferedReader br = null;
		
		try {
			//设置请求编码集格式
			String question = URLEncoder.encode(message,"utf-8");
			//请求URL对接图灵机器人的接口
			String requestUrl = "http://www.tuling123.com/openapi/api?key=44441bd1bf2b4ad7848a158eba35b2a0&info="+question;
			//建立网络连接
			urlObj = new URL(requestUrl);
			//获取连接对象
			uc = urlObj.openConnection();
			//直接连接
			uc.connect();
			//获取请求的结果
			reader = new InputStreamReader(uc.getInputStream(),"utf-8");
			//建立缓冲写入流
			br = new BufferedReader(reader);
			//建立临时变量
			String temp = null;
			while((temp = br.readLine()) != null){
				buffer.append(temp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(reader !=null){
				try {
					reader.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			
			if (br !=null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				} 
			}
			
		}

		return buffer.toString();
	}
	
	//java入口
	public static void main(String[] args) {
		String question = "你好";
		String str = getResult(question);
		System.out.println(str);

	}
}
