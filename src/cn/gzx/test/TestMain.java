package cn.gzx.test;

import cn.gzx.bean.Article;
import cn.gzx.bean.Comment;
import cn.gzx.util.TableUtils;

public class TestMain {
	public static void main(String[] args) {
		String sql = TableUtils.getCreateTableSQl(Comment.class);
		System.out.println(sql);
	}
}
