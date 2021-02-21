 <%@page import="com.smartfood.*,java.sql.*"%>
<html>
<body>
<% 
try
{
Connection con =ConnectionProvider.getCon();
Statement pst=con.createStatement();
pst.execute("create table sf_category(category_id varchar2(20) primary key,category_name varchar2(50))");
pst.execute("create table sf_user(user_name varchar2(20),user_email varchar2(30) primary key,user_mobile varchar2(12),user_password varchar2(20))");
pst.execute("create table sf_vendor(shop_name varchar2(70),vendor_name varchar2(20),vendor_email varchar2(30) primary key,vendor_mobile varchar2(12) unique,vendor_password varchar2(20),vendor_state varchar2(20),vendor_city varchar2(20),vendor_landmark varchar2(70),vendor_zip varchar2(10),vendor_status varchar2(10))");
pst.execute("create table sf_item(item_category varchar2(30),item_id number(11) primary key,item_name varchar2(30),item_price number(11),item_imgurl varchar2(200),vendor_email varchar2(30),item_status varchar2(10))");
pst.execute("create table sf_order(order_id number(10) primary key, item_id number(10),user_id varchar2(20),order_location varchar2(50))");

System.out.println("successfully created");
con.close();
}
catch(Exception e)
{
//System.out.println(e);
 System.out.println("db related problem or tables already exist");
}
%>
</div>
</body>
</html>