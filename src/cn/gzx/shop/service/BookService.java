package cn.gzx.shop.service;

import cn.gzx.shop.Book;

import java.util.List;

public interface BookService {

    public List<Book> select(Book book);

    public Book getBook(Book book);
}
