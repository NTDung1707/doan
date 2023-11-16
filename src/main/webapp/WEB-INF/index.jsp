<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Trang Chủ </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    </head>
    <body>
        <section>
            <header> 
                <!--
                <h2><a href="#" class="logo">DaNang Tralvel</a></h2> -->
                <h2><a href="#" class="logo"><img src="img/logo-du-lich-da-nang-tourism-vn-1-1187x900_preview_rev_1.png" alt="Mo ta anh"></a></h2>
                <div class="navigation">
                    <a href="home.html">Home</a>
                    <a href="destinations.html">Destinations</a>
                    <a href="foods.html">Foods</a>
                    <a href="Hotel.html">Hotel</a>
                    <a href="contact.html" >Contact</a>
                    <a href="about.html" >About</a>   
                  
                    <% 
                    Object obj = session.getAttribute("khachHang");
					KhachHang khachHang = null;
					if (obj!=null)
						khachHang = (KhachHang)obj;
					
					if(khachHang==null){
			
                    %> 
					<a href="login.jsp" class="Sign-in" style="display: inline-block; padding: 10px 20px; background-color: #3498db; color: #fff; text-decoration: none; border-radius: 5px;">Đăng Nhập</a>
					<% }else { %>
					<div class="row text-center" style="margin-left: 0.25em">
							<div class="row"><b><%=khachHang.getTenDangNhapString() %></b></div>
							<div class="row"><a style="white-space: nowrap;" href="dang-xuat">
								Đăng xuất
							</a>
							</div>
					</div>
					<% } %>
						
                </div>
            </header>
        </section>

        <script src="" async defer></script>
    </body>
</html>