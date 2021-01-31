<%@ page import="java.util.ArrayList" %>
<%@ page import="BEAN.Bill" %>
<%@ page import="BEAN.Sach" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>About Us || Witter Multipage Responsive Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="link.jsp" %>
</head>
<body>

<!-- Add your site or application content here -->
<!--Header Area Start-->


<%@include file="header.jsp" %>
<%
	 user = (User) session.getAttribute("user");
	ArrayList<Bill> listBill = user.getListBill();
%>
<!--Header Area End-->
<!-- Breadcrumbs Area Start -->
<div class="breadcrumbs-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumbs">
                    <h2>Cá nhân</h2>
                    <ul class="breadcrumbs-list">
                        <li>
                            <a title="Return to Home" href="index.jsp">Trang chủ</a>
                        </li>
                        <li>Cá nhân</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumbs Area Start -->
<!-- My Account Area Start -->
<div class="my-account-area section-padding">
    <div class="container">
        <div class="section-title2">
            <h2>Quản lý đơn hàng</h2>
            <p>Chào mừng bạn đến với tài khoản của bạn. Tại đây bạn có thể quản lý tất cả các thông tin cá nhân và đơn
                đặt hàng của bạn.</p>
        </div>
        <div class="row">
            <div class="addresses-lists">
                <div class="col-xs-12 col-sm-6 col-lg-6">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                                       aria-expanded="true" aria-controls="collapseOne">
                                        <i class="fa fa-building"></i>
                                        <span>Sổ địa chỉ</span>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel"
                                 aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <div class="coupon-info">
                                        <h1 class="heading-title">Địa chỉ của bạn</h1>
                                        <p class="coupon-text">Để thêm một địa chỉ mới, vui lòng điền vào mẫu dưới
                                            đây.</p>
                                        <p class="required">*Bắt buộc</p>
                                        <form action="#">
                                            <p class="form-row">
                                                <input type="text" placeholder="Tên của bạn *" value="<%=user.getEmail()%>">
                                            </p>
                                            <p class="form-row">
                                                <input type="text" placeholder="Địa chỉ *" value="<%=user.getEmail()%>">
                                            </p>
                                            <p class="form-row">
                                                <input type="text" placeholder="Thành phố *" value="<%=user.getEmail()%>">
                                            </p>
                                            <p class="form-row">
                                                <input type="text" placeholder="Số điện thoại *" value="<%=user.getEmail()%>"/>
                                            </p>
                                            <p class="form-row order-notes">
                                                <textarea placeholder="Thông tin thêm"></textarea>
                                            </p>
                                            <a title="Save" class="btn button button-small" href="index.jsp">
														<span>
															  Lưu lại
															<i class="fa fa-chevron-right"></i>
														</span>
                                            </a>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                       href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="fa fa-list-ol"></i>
                                        <span>Quản lý đơn hàng</span>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel"
                                 aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <div class="coupon-info">
                                        <h1 class="heading-title">LỊCH SỬ ĐƠN HÀNG </h1>
                                        <p class="coupon-text">Dưới đây là các đơn đặt hàng bạn đã đặt kể từ khi tài
                                            khoản của bạn được tạo.</p>
                                        <div class="order-history">
                                            <%--													<p class="alert">Bạn chưa có đơn hàng nào.</p>--%>
                                            <%
                                                for (int i = 0; i < listBill.size(); i++) {
                                            %>

                                            <table id="dataTable"
                                                   class="table table-bordered table-condensed table-hover table-striped dataTable no-footer"
                                                   role="grid" aria-describedby="dataTable_info">
                                                <thead>
                                                <tr role="row">
                                                    <th class="sorting_asc" tabindex="0" aria-controls="dataTable"
                                                        rowspan="1" colspan="1" aria-sort="ascending"
                                                        aria-label="ID: activate to sort column descending"
                                                        style="width: 135px;">
                                                        Id Bill
                                                    </th>
                                                    <th class="sorting_asc" tabindex="0" aria-controls="dataTable"
                                                        rowspan="1" colspan="1" aria-sort="ascending"
                                                        aria-label="ID: activate to sort column descending"
                                                        style="width: 135px;">
                                                        Tên sách
                                                    </th>
                                                    <th class="sorting" tabindex="0" aria-controls="dataTable"
                                                        rowspan="1" colspan="1"
                                                        aria-label="Email: activate to sort column ascending"
                                                        style="width: 796px;">
                                                        Số lượng
                                                    </th>
                                                    <th class="sorting" tabindex="0" aria-controls="dataTable"
                                                        rowspan="1" colspan="1"
                                                        aria-label="Email: activate to sort column ascending"
                                                        style="width: 796px;">
                                                        Giá
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <%
                                                    ArrayList<Sach> listSach = listBill.get(i).getListSach();
                                                    for (int j = 0; j < listSach.size(); j++) {
                                                        String str = " ";
                                                        if (j == 0) {
                                                            str = listBill.get(i).getId() + "";
                                                        }
                                                %>

                                                <tr role="row" class="odd">
                                                    <td class="sorting_1"><%=str%>
                                                    </td>
                                                    <td class="sorting_1"><%=listSach.get(j).getTenSach()%>
                                                    </td>
                                                    <td><%=listSach.get(j).getSoLuongMua()%>
                                                    </td>
                                                    <td><%=listSach.get(j).getGia()%>
                                                    </td>

                                                </tr>

                                                <%}%>
                                                </tbody>
                                            </table>
                                            Tong: <%=listBill.get(i).total()%>
                                            <%}%>
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
                                        <i class="fa fa-file-o"></i>
                                        <span>Thông tin thanh toán</span>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel"
                                 aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <div class="coupon-info">
                                        <h1 class="heading-title">Lịch sử thanh toán</h1>
                                        <p class="coupon-text">Lưu lại thông tin thanh toán sẽ giúp bạn đặt hàng nhanh
                                            chóng và dễ dàng hơn.</p>
                                        <div class="order-history">
                                            <p class="alert">Bạn chưa có hóa đơn thanh toán nào.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingFour">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                       href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                        <i class="fa fa-building"></i>
                                        <span>Thông tin cá nhân</span>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFour" class="panel-collapse collapse" role="tabpanel"
                                 aria-labelledby="headingFour">
                                <div class="panel-body">
                                    <div class="coupon-info">
                                        <h1 class="heading-title">Thông tin cá nhân của bạn</h1>
                                        <p class="coupon-text">Hãy chắc chắn để cập nhật thông tin cá nhân của bạn nếu
                                            nó đã thay đổi.</p>
                                        <p class="required">*Bắt buộc</p>
                                        <form action="<%=Util.fullPath("ChangePassController")%>" method="post">

                                            <p class="form-row">
                                                <input type="text" placeholder="Tên của bạn *"/>
                                            </p>

                                            <p class="form-row">
                                                <input type="text" placeholder="Địa chỉ email"/>
                                            </p>
                                            <div class="form-row">
                                                <label><span class="required">*</span>Giới tính </label>
                                                <div class="radio-inline">
                                                    <label class="top">
																	<span class="checked">
																		<input type="radio" name="gender"
                                                                               value="male"/>
																	</span>
                                                        Nam
                                                    </label>
                                                </div>
                                                <div class="radio-inline">
                                                    <label class="top">
																	<span class="checked">
																		<input type="radio" name="gender"
                                                                               value="female"/>
																	</span>
                                                        Nữ
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="country-select shop-select">
                                                <label>Ngày sinh</label>
                                                <div class="row">
                                                    <div class="col-xs-4">
                                                        <select>
                                                            <option>1</option>
                                                            <option>2</option>
                                                            <option>3</option>
                                                            <option>4</option>
                                                            <option>5</option>
                                                            <option>6</option>
                                                            <option>7</option>
                                                            <option>8</option>
                                                            <option>9</option>
                                                            <option>10</option>
                                                            <option>11</option>
                                                            <option>12</option>
                                                            <option>13</option>
                                                            <option>14</option>
                                                            <option>15</option>
                                                            <option>16</option>
                                                            <option>17</option>
                                                            <option>18</option>
                                                            <option>19</option>
                                                            <option>20</option>
                                                            <option>21</option>
                                                            <option>22</option>
                                                            <option>23</option>
                                                            <option>24</option>
                                                            <option>25</option>
                                                            <option>26</option>
                                                            <option>27</option>
                                                            <option>28</option>
                                                            <option>29</option>
                                                            <option>30</option>
                                                            <option>31</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-xs-4">
                                                        <select>
                                                            <option>Tháng 1</option>
                                                            <option>Tháng 2</option>
                                                            <option>Tháng 3</option>
                                                            <option>Tháng 4</option>
                                                            <option>Tháng 5</option>
                                                            <option>Tháng 6</option>
                                                            <option>Tháng 7</option>
                                                            <option>Tháng 8</option>
                                                            <option>Tháng 9</option>
                                                            <option>Tháng 10</option>
                                                            <option>Tháng 11</option>
                                                            <option>Tháng 12</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-xs-4">
                                                        <select>
                                                            <option>1989</option>
                                                            <option>1990</option>
                                                            <option>1991</option>
                                                            <option>1992</option>
                                                            <option>1993</option>
                                                            <option>1994</option>
                                                            <option>1995</option>
                                                            <option>1996</option>
                                                            <option>1997</option>
                                                            <option>1998</option>
                                                            <option>1999</option>
                                                            <option>2000</option>
                                                            <option>2001</option>
                                                            <option>2002</option>
                                                            <option>2003</option>
                                                            <option>2004</option>
                                                            <option>2005</option>
                                                            <option>2006</option>
                                                            <option>2007</option>
                                                            <option>2008</option>
                                                            <option>2009</option>
                                                            <option>2010</option>
                                                            <option>2011</option>
                                                            <option>2012</option>
                                                            <option>2013</option>
                                                            <option>2014</option>
                                                            <option>2016</option>
                                                            <option>2016</option>
                                                            <option>2017</option>
                                                            <option>2018</option>
                                                            <option>2019</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <p>Thay đổi mật khẩu</p>
                                            <p class="form-row">
                                                <input type="text" name="current-pass" placeholder="Mật khẩu hiện tại"/>
                                            </p>
                                            <p class="form-row">
                                                <input type="text" name="newPass" placeholder="Mật khẩu mới"/>
                                            </p>
                                            <p class="form-row">
                                                <input type="text" name="cfPass" placeholder="Nhập lại mật khẩu mới"/>
                                            </p>
                                            <div class="checkbox">
                                                <label>
                                                    <span><input type="checkbox" checked="checked"/></span>
                                                    Đăng ký nhận bản tin của chúng tôi!
                                                </label>
                                            </div>
                                            <a title="Save" class="btn button button-small" href="index.jsp">
														<span>
															  Cập nhật
															<i class="fa fa-chevron-right"></i>
														</span>
                                            </a>
											<input type="submit" value="Đổi mật khẩu">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-lg-6">
                    <div class="myaccount-link-list">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a href="wishlist.jsp">
                                        <i class="fa fa-heart"></i>
                                        <span>Danh sách yêu thích của tôi</span>
                                    </a>
                                </h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <%--											<a  href=<%=Util.fullPath("GioHangController")%>>--%>
                                    <a href="http://localhost:8080/BookProject/bookhome/cart.jsp">
                                        <i class="fa fa-list-ol"></i>
                                        <span>Giỏ hàng của tôi</span>
                                    </a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="create-account-button pull-left">
                    <a href="index.jsp" class="btn button button-small" title="Home">
								<span>
									<i class="fa fa-chevron-left"></i>
									 Trở về
								</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- My Account Area End -->
<!-- Footer Area Start -->
<%@include file="footer.jsp" %>
<!-- Footer Area End -->
<!-- all js here -->
<%@include file="script.jsp" %>
</body>
</html>