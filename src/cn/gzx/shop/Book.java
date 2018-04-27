package cn.gzx.shop;

import java.io.Serializable;

public class Book implements Serializable {
    private static final long serialVersionUID =1L;
    private Integer bookid;
    private String bookname;
    private Double price;
    private String author;
    private String pic;
    private String description;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getBookid() {
        return bookid;
    }

    public void setBookid(Integer bookid) {
        this.bookid = bookid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Book [bookid=" + bookid + ", bookname=" + bookname + ", price=" + price + ", author="+ author
                        + ", pic=" + pic + ", description=" + description + "]";
    }
}
