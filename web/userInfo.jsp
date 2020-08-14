
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
          crossorigin="anonymous">
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/footer.css"/>
    <link rel="stylesheet" href="css/header.css"/>
</head>
<body>
<!-- header -->
<%@include file="header.jsp" %>

<%-- body --%>

<div class="container">

    <%
        if (request.getAttribute("chanegInfoSuccess") != null) {
    %>
    <div class="alert alert-success">
        <strong>信息修改成功！</strong>
    </div>
    <%
        request.removeAttribute("chanegInfoSuccess");
    }
    %>

    <div class="row">
        <div class="col-md-2">

        </div>
        <div class="col-md">
            <div class="card-header">
                <%
                    if (user.getPrivilege().equals("user")) {
                %>
                普通用户
                <%
                } else if (user.getPrivilege().equals("admin")) {
                %>
                管理员
                <%
                    }
                %>
            </div>
            <div class="card-body">
                <form method="post" action="./UserInfoChange">
                    <div class="form-group row">
                        <label for="username" class="col-md-3 col-form-label">更改用户名：</label>
                        <div class="col-sm-9">
                            <input type="text" name="newusername" class="form-control" id="username" value="${user.name}">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="useremail" class="col-md-3 col-form-label">邮箱地址：</label>
                        <div class="col-sm-9">
                            <input type="text" name="useremail" readonly class="form-control-plaintext" id="useremail"
                                   value="${user.email}">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="newpassword" class="col-md-3 col-form-label">更改密码：</label>
                        <div class="col-sm-9">
                            <input type="password" name="newpassword" class="form-control" id="newpassword">
                        </div>

                    </div>

                    <div class="form-group row justify-content-end">
                        <button class="btn btn-outline-secondary" type="submit">确认修改
                        </button>
                    </div>

                </form>
            </div>
        </div>
        <div class="col-md-2">

        </div>
    </div>
</div>

<%-- footer --%>

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
