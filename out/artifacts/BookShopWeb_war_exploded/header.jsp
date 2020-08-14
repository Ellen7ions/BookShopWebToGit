<%@ page import="com.langsin.beans.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container header">
    <!-- first row -->
    <div class="row">
        <div class="col-md content">
            <ul class="nav ">
                <li class="nav-item">
                    <svg style="width: 40px; height: 40px;" t="1597144221402" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2344" width="200" height="200"><path d="M893.614907 120.84472c-19.080745 0-31.801242 12.720497-31.801242 31.801242l0 737.78882c0 31.801242-31.801242 63.602484-63.602484 63.602484L238.509317 954.037267c-38.161491 0-82.68323-31.801242-82.68323-63.602484l0-69.962733c0-31.801242 38.161491-50.881988 76.322981-50.881988l534.26087 0c19.080745 0 31.801242-12.720497 31.801242-31.801242L798.21118 114.484472c0-69.962733-50.881988-114.484472-127.204969-114.484472L238.509317 0C168.546584 0 98.583851 38.161491 98.583851 114.484472l0 782.310559c0 0 0 0 0 6.360248 0 6.360248 0 6.360248 0 12.720497 6.360248 57.242236 63.602484 101.763975 120.84472 108.124224 0 0 6.360248 0 6.360248 0 0 0 0 0 6.360248 0l566.062112 0c69.962733 0 127.204969-57.242236 127.204969-120.84472L925.416149 152.645963C925.416149 139.925466 912.695652 120.84472 893.614907 120.84472zM772.770186 833.192547 251.229814 833.192547c-19.080745 0-31.801242 12.720497-31.801242 31.801242s12.720497 31.801242 31.801242 31.801242l521.540373 0c19.080745 0 31.801242-12.720497 31.801242-31.801242S791.850932 833.192547 772.770186 833.192547z" p-id="2345"></path></svg>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" href="./index.jsp">BookShop&nbsp;&nbsp;首页</a>
                </li>
            </ul>
        </div>

        <div class="content">
            <ul class="nav justify-content-end">
                <li id="desc">
                    <%
                        User user = (User) session.getAttribute("user");
                        if (user != null) {
                    %>
                    <a class="nav-link" href="#"><%="你好！ " + user.getName()%></a>
                    <%
                        }
                    %>
                </li>

                <li class="nav-item">
                    <div class="dropdown">
                        <button id="my-drop-button" style="background-color: white; color: #A9A9A9" class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            用户中心
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <%
                                if (user != null) {
                            %>
                            <a class="dropdown-item" href="./userCart.jsp">购物车</a>
                            <a class="dropdown-item" href="./userInfo.jsp">用户信息</a>
                            <%
                                } else {
                            %>
                            <a class="dropdown-item" href="#">请先登录</a>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </li>

                <%
                    if (request.getSession().getAttribute("user") != null) {
                %>

                <li class="nav-item">
                    <a class="nav-link" href="./LogoutPost">退出登录</a>
                </li>

                <%
                } else {
                %>

                <li class="nav-item">
                    <a class="nav-link" href="./login.jsp">登录</a>
                </li>
                <%
                    }
                %>
                <li class="nav-item">
                    <a class="nav-link" href="./register.jsp">注册</a>
                </li>
            </ul>
        </div>
    </div>
</div>