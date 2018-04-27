package cn.gzx.shop.utils;

import java.sql.*;

public class BaseDao {

    private static String driver = "com.mysql.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/Instant";
    private static String user = "root";
    private static String password = "123456";

    /*
    连接数据库
     */
    public static Connection getCon() throws ClassNotFoundException,SQLException{
        Class.forName(driver);
        //System.out.println("成功");
        Connection con = DriverManager.getConnection(url,user,password);
        //System.out.println("成功");
        return con;
    }

    /*
    关闭数据库
     */
    public static void close(Connection con, PreparedStatement ps, ResultSet rs){
        if(rs!=null){
            try{
                rs.close();
            }catch(SQLException e){
                e.printStackTrace();
            }
        }
        if(ps!=null){
               try {
                   ps.close();
               } catch (SQLException e) {
                   e.printStackTrace();
               }
        }
        if(con!=null){
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /*
    同意增删改
     */
    public static boolean addUpdateDelete(String sql,Object[] arr){
        Connection con = null;
        PreparedStatement ps=null;
        try {
            con=BaseDao.getCon();//第一步 ：连接数据库的操作
            ps=con.prepareStatement(sql);//第二步：预编译
            //第三步：设置值
            if(arr!=null && arr.length!=0){
                for(int i=0;i<arr.length;i++){
                    ps.setObject(i+1, arr[i]);
                }
            }
            int count=ps.executeUpdate();//第四步：执行sql语句
            if(count>0){
                return true;
            }else{
                return false;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        try{
            BaseDao.getCon();
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

}
