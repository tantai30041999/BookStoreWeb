<%@ page import="BEAN.User" %>
<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Creat An Account || Witter Multipage Responsive Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="link.jsp" %>

</head>
<body>

<%--<%--%>
<%--    User user = (User) session.getAttribute("user");--%>
<%--    if (user != null) {--%>
<%--        out.print(user.getEmail());--%>
<%--    }--%>
<%--%>--%>
<!-- Add your site or application content here -->
<!--Header Area Start-->
<%@include file="header.jsp" %>
<!--Header Area End-->
<!-- Breadcrumbs Area Start -->
<div class="breadcrumbs-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumbs">
                    <h2>Đăng nhập</h2>
                    <ul class="breadcrumbs-list">
                        <li>
                            <a title="Return to Home" href="index.jsp">Trang chủ</a>
                        </li>
                        <li>Đăng nhập</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumbs Area Start -->
<!-- Loging Area Start -->
<div class="login-account section-padding">
    <div class="container">
        <div class="row" style="  display: flex;
  align-items: center;
  justify-content: center;">
            <div class="col-md-6 col-sm-6">
                <form action=<%=Util.fullPath("SigninController")%> class="create-account-form" method="post">
                    <h2 class="heading-title">
                        Bạn đã có tài khoản ?
                    </h2>
                    <p style="color:red;"><%=request.getAttribute("msgLogin") != null ? request.getAttribute("msgLogin") : ""%>
                    </p>
                    <p class="form-row">
                        <input type="email" name="email" placeholder="Địa chỉ email">
                    </p>
                    <p class="form-row">
                        <input type="password" name="password" placeholder="Mật khẩu">
                    </p>
                    <p class="lost-password form-group">
                        <a href=<%=Util.fullPath("bookhome/forgotPass.jsp")%> rel="nofollow">Quên mật khẩu ?</a>
                    </p>
                    <div class="submit">
                        <button name="submitcreate" id="submitcreate" type="submit" class="btn-default">
                                    <span>
                                        <i class="fa fa-user left"></i>
                                        Đăng nhập
                                    </span>
                        </button>

                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Loging Area End -->
<!-- Footer Area Start -->
<%@include file="footer.jsp" %>
<!-- Footer Area End -->
<!-- all js here -->
<%@include file="script.jsp" %>
<%--<script>--%>
<%--    function display() {--%>
<%--        var xhttp;--%>
<%--        var email = document.signupForm.email.value;--%>
<%--        if (window.XMLHttpRequest) {--%>
<%--            xhttp = new XMLHttpRequest();--%>
<%--        } else {--%>
<%--            xhttp = new ActiveXObject("Microsoft.XMLHTTP");--%>
<%--        }--%>
<%--        xhttp.onreadystatechange = function () {--%>
<%--            if (xhttp.readyState == 4) {--%>
<%--                var data = xhttp.responseText;--%>
<%--                document.getElementById("result").innerHTML = data;--%>
<%--            }--%>
<%--        }--%>
<%--        xhttp.open("POST", "http://localhost:8080/BookProject/ValidateFormController?email=" + email, true);--%>
<%--        xhttp.send();--%>
<%--    }--%>
<%--</script>--%>

</body>
</html>