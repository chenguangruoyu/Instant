package cn.gzx.shop.dao;

import cn.gzx.shop.Book;
import cn.gzx.shop.dao.impl.BookDao;
import cn.gzx.shop.utils.BaseDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDaoImpl implements BookDao {

    public List<Book> select(String sql, Object[] arr){
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            //连接数据库
            con = BaseDao.getCon();
            //预编译
            ps=con.prepareStatement(sql);
            if(arr!=null){
                for(int i = 0;i<arr.length;i++){
                    ps.setObject(i+1,arr[i]);
                }
            }
            rs=ps.executeQuery();
            List<Book> list = new ArrayList<Book>();
            while(rs.next()){
                Book book = new Book();
                book.setBookid(rs.getInt("bookid"));
                book.setBookname(rs.getString("bookname"));
                book.setPrice(rs.getDouble("price"));
                book.setPic(rs.getString("pic"));
                book.setDescription(rs.getString("description"));

                list.add(book);
            }
            return list;
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        } finally {
            BaseDao.close(con, ps, rs);
        }
        return null;
    }

    public Book getBook(Integer id) {
        Connection con=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            con=BaseDao.getCon();
            String sql="select * from book where bookid = ? ";
            ps=con.prepareStatement(sql);
            ps.setInt(1, id);
            rs=ps.executeQuery();
            if (rs.next()) {
                do {
                    Book books = new Book();
                    books.setBookid(rs.getInt("bookid"));
                    books.setBookname(rs.getString("bookname"));
                    books.setPrice(rs.getDouble("price"));
                    books.setAuthor(rs.getString("author"));
                    books.setPic(rs.getString("pic"));
                    books.setDescription(rs.getString("description"));

                    return books;
                } while (rs.next());
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally{
            BaseDao.close(con, ps, rs);
        }
        return null;
    }
}



