package cn.gzx.shop.service.impl;

import cn.gzx.shop.Book;
import cn.gzx.shop.dao.BookDaoImpl;
import cn.gzx.shop.dao.impl.BookDao;
import cn.gzx.shop.service.BookService;

import java.util.ArrayList;
import java.util.List;

public class BookServiceImpl implements BookService{

    private BookDao dao = new BookDaoImpl();

    public List<Book> select(Book book){
        //String sql="select * from book ";
        StringBuilder sql = new StringBuilder("select * from book where 1=1 ");
        //sql语句
        List<Object> list = new ArrayList<Object>();
        if(book!=null){

            if(book.getBookid()!=null && book.getBookid()!=0){
                sql.append(" and bookid=? ");
                list.add(book.getBookid());
            }
            /*list.add(book.getBookname());
            list.add(book.getPrice());
            list.add(book.getAuthor());

            list.add(book.getPic());
            list.add(book.getPublish());*/
        }

        return dao.select(sql.toString(), list.toArray());
    }

    @Override
    public Book getBook(Book book) {
        if(book.getBookid()!=null && book.getBookid()!=0) {
            return dao.getBook(book.getBookid());
        }
        return null;
    }
}
