package cn.gzx.shop.dao.impl;

import cn.gzx.shop.Book;

import java.util.List;

public interface BookDao {

    public List<Book> select(String sql, Object[] arr);

    public Book getBook(Integer id);
}
