<%@ page import="com.langsin.beans.Book" %>
<%@ page import="java.util.List" %>
<%@ page import="com.langsin.service.BookService" %>
<%@ page import="com.langsin.service.PageService" %>
<%@ page import="com.langsin.beans.Page" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="utf-8"/>
    <title>首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
          crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./css/index.css"/>
    <link rel="stylesheet" type="text/css" href="./css/footer.css"/>
    <link rel="stylesheet" type="text/css" href="./css/header.css"/>
</head>
<body>

<!-- header -->
<%@include file="header.jsp" %>

<%
    if (request.getSession().getAttribute("pageNum") == null) {
        request.getSession().setAttribute("pageNum", new PageService().loadPage(1));
    }
%>

<!-- body -->

<div class="container">

    <%
        if (request.getAttribute("successBuy") != null) {
    %>
    <div class="alert alert-success">
        <strong>购买成功！</strong>
    </div>
    <%
        request.removeAttribute("successBuy");
    } else if (request.getAttribute("failBuy") != null) {
    %>
    <div class="alert alert-danger">
        <strong>购买失败！</strong>
    </div>
    <%
            request.removeAttribute("failBuy");
        }
    %>

    <div class="card-columns">

        <%
            Page pageNum = (Page) request.getSession().getAttribute("pageNum");
            session.setAttribute("bookList", pageNum.getPageBooks());
        %>

        <c:forEach var="book" items="${bookList}">
            <div class="card">
                <img src="${book.img}" class="img-responsive card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">${book.name}</h5>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">价格：&nbsp; &nbsp; ${book.price}元</li>
                    <li class="list-group-item">已售：&nbsp; &nbsp; ${book.sell}</li>
                    <li class="list-group-item">剩余：&nbsp; &nbsp; ${book.left}</li>
                </ul>
                <div class="card-body">
                        <%--							<a href="#" class="card-link">Card link</a>--%>
                        <%--							<a href="#" class="card-link">Another link</a>--%>
                    <!-- Button trigger modal -->
                    <div class="container">
                        <div class="row justify-content-center">
                            <%
                                if (user == null) {
                            %>

                            <button type="button" class="btn btn-primary" data-toggle="modal"
                                    data-target="#buymodal${book.id}"
                                    style="visibility: hidden">
                            </button>

                            <%
                                } else if (user.getPrivilege().equals("user")) {
                            %>
                            <button type="button" class="btn btn-primary" data-toggle="modal"
                                    data-target="#buymodal${book.id}">
                                加入购物车
                            </button>
                            <%
                                } else if (user.getPrivilege().equals("admin")) {
                            %>
                            <button type="button" class="btn btn-primary" data-toggle="modal"
                                    data-target="#buymodal${book.id}">
                                修改书籍信息
                            </button>
                            <%
                                }
                            %>

                            <!-- Modal -->
                            <div class="modal fade" id="buymodal${book.id}" tabindex="-1" role="dialog"
                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">加入购物车</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <%
                                                if (session.getAttribute("user") == null) {
                                            %>
                                            <h3>请登录！</h3>
                                            <%
                                            } else {
                                            %>
                                            <form action="./AddToCartPost" method="post">
                                                <div class="input-group mb-3">
                                                    <input type="text" name="id" value="${book.id}"
                                                           style="display: none;"/>
                                                    <span class="input-group-text" id="basic-addon1">数量：</span>
                                                    <input name="number" type="text" class="form-control" placeholder=""
                                                           aria-label="Username"
                                                           aria-describedby="basic-addon1">
                                                    <div class="input-group-prepend">
                                                        <button class="btn btn-outline-secondary" type="submit">提交
                                                        </button>
                                                    </div>
                                                </div>
                                            </form>
                                            <%
                                                }
                                            %>
                                        </div>
                                        <div class="modal-footer">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </c:forEach>
    </div>

    <div class="row" style="color: #A9A9A9; font-weight: 700; font-size: large; padding-bottom: 20px">
        <div class="col-md-2 offset-md-2">
            <a class="page-link" style="text-align: center;" href="./PreviousPagePost">Previous</a>
        </div>
        <div class="col-md-2 offset-md-4">
            <a class="page-link justify-content-end" style="text-align: center;" href="./NextPagePost">Next</a>
        </div>
    </div>

</div>

<%@include file="footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
</body>
</html>
