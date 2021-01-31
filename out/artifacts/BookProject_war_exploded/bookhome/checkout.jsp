<%@ page import="java.util.ArrayList" %>
<%@ page import="BEAN.Sach" %>
<%@ page import="Controller.DatMuaController" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Checkout || Witter Multipage Responsive Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="link.jsp" %>
</head>
<body>
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
                    <h2>Thanh toán</h2>
                    <ul class="breadcrumbs-list">
                        <li>
                            <a title="Return to Home" href="index.jsp">Trang chủ</a>
                        </li>
                        <li>Thanh toán</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumbs Area Start -->
<!-- Check Out Area Start -->
<form method="post" action="<%=Util.fullPath("DatMuaController")%>">
<div class="check-out-area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion"
                                   href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <span>1</span>
                                    Địa chỉ giao hàng
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel"
                             aria-labelledby="headingone">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <p class="form-row">
                                            <input type="text" name="lastName" placeholder="Họ *">
                                        </p>
                                    </div>
                                    <div class="col-md-6">
                                        <p class="form-row">
                                            <input type="text" name="firstName" placeholder="Tên *">
                                        </p>
                                    </div>
                                    <div class="col-md-12">
                                        <p class="form-row">
                                            <input type="text" name="address" placeholder="Địa chỉ *">
                                        </p>
                                    </div>
                                    <div class="col-md-6">
                                        <p class="form-row">
                                            <input type="text" name="email" placeholder="Địa chỉ email *" value="<%=user.getEmail()%>">
                                        </p>
                                    </div>
                                    <div class="col-md-6">
                                        <p class="form-row">
                                            <input type="text" name="phoneNumber" placeholder="Số điện thoại *">
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                   href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    <span>2</span>
                                    Ghi chú giao hàng
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel"
                             aria-labelledby="headingTwo">
                            <div class="panel-body">
                                <div class="different-address">
                                    <div class="ship-different-title">
                                        <h3>
                                            <label>Gửi đến địa chỉ khác?</label>
                                            <input type="checkbox" id="ship-box">
                                        </h3>
                                    </div>
                                    <div id="ship-box-info" class="row">

                                        <div class="col-md-6">
                                            <p class="form-row">
                                                <input type="text" placeholder="Họ *">
                                            </p>
                                        </div>
                                        <div class="col-md-6">
                                            <p class="form-row">
                                                <input type="text" placeholder="Tên *">
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <p class="form-row">
                                                <input type="text" placeholder="Địa chỉ *">
                                            </p>
                                        </div>
                                        <div class="col-md-6">
                                            <p class="form-row">
                                                <input type="text" placeholder="Địa chỉ email *">
                                            </p>
                                        </div>
                                        <div class="col-md-6">
                                            <p class="form-row">
                                                <input type="text" placeholder="Số điện thoại *">
                                            </p>
                                        </div>
                                    </div>
                                    <div class="order-notes">
                                        <label>Ghi chú đặt hàng</label>
                                        <textarea rows="10" cols="30" id="checkout-mess"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h4 class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                   href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    <span>3</span>
                                    Phương thức thanh toán
                                </a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel"
                             aria-labelledby="headingThree">
                            <div class="panel-body no-padding">
                                <div class="payment-met">
                                    <form action="#" id="payment-form">
                                        <ul class="form-list">
                                            <li class="control">
                                                <input type="radio" class="radio" title="Check / Money order"
                                                       name="payment[method]" id="p_method_checkmo" value="1">
                                                <label for="p_method_checkmo">Thanh toán tiền mặt khi nhận hàng</label>
                                            </li>
                                            <li class="control">
                                                <input type="radio" class="radio" title="Credit Card (saved)"
                                                       name="payment[method]"  id="p_method_ccsave" value="2">
                                                <label for="p_method_ccsave">Thẻ ATM nội địa/Internet Banking (Miễn phí
                                                    thanh toán)</label>
                                            </li>

                                        </ul>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFour">
                            <h4 class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                   href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    <span>4</span>
                                    Đơn hàng
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel"
                             aria-labelledby="headingFour">
                            <div class="panel-body no-padding">
                                <div class="order-review" id="checkout-review">
                                    <div class="table-responsive" id="checkout-review-table-wrapper">
                                        <table class="data-table" id="checkout-review-table">
                                            <thead>
                                            <tr>
                                                <th rowspan="1">Tên sản phẩm</th>
                                                <th colspan="1">Giá</th>
                                                <th rowspan="1">SL</th>
                                                <th colspan="1">Tổng tiền</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <% ArrayList<Sach> listSach = (ArrayList<Sach>) request.getAttribute("listSach");
                                            double tongTien = 0;
                                            double phiVanChuyen = 10;
                                                for (int i = 0; i < listSach.size(); i++) {
                                                    tongTien+=listSach.get(i).tongTien();
                                                %>
                                            <tr>
                                                <td><h3 class="product-name"><%=listSach.get(i).getTenSach()%></h3></td>
                                                <td><span class="cart-price"><span
                                                        class="check-price"><%=listSach.get(i).getGia()%></span></span></td>
                                                <td><%=listSach.get(i).getSoLuongMua()%></td>
                                                <!-- sub total starts here -->
                                                <td><span class="cart-price"><span
                                                        class="check-price">$<%=listSach.get(i).tongTien()%></span></span></td>
                                            </tr>
                                         <%}%>
                                            </tbody>
                                            <tfoot>
                                            <tr>
                                                <td colspan="3">Tạm tính</td>
                                                <td><span class="check-price">$<%=tongTien%></span></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">Phí vận chuyển</td>
                                                <td><span class="check-price">$<%=phiVanChuyen%></span></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3"><strong>Thành tiền</strong></td>
                                                <td><strong><span class="check-price">$<%=(phiVanChuyen+tongTien)%></span></strong></td>
                                            </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                    <div id="checkout-review-submit">
                                        <div class="cart-btn-3" id="review-buttons-container">
                                            <p class="left"><a href="<%=Util.fullPath("bookhome/cart.jsp")%>">Chỉnh sửa giỏ hàng</a></p>
                                            <button type="submit" title="Place Order" class="btn btn-default"><span>Đặt Mua</span>
                                            </button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
<!-- Check Out Area End -->
<!-- Footer Area Start -->
<%@include file="footer.jsp" %>
<!-- Footer Area End -->
<!-- all js here -->
<%@include file="script.jsp" %>
</body>
</html>