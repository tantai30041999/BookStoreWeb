<%@ page import="java.util.ArrayList" %>
<%@ page import="BEAN.Sach" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home One || Witter Multipage Responsive Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ include file="link.jsp" %>
</head>
<body>

<!-- Add your site or application content here -->
<!--Header Area Start-->
<%@ include file="header.jsp" %>
<!--Header Area End-->

<!-- slider Area Start -->
<div class="slider-area">
    <div class="bend niceties preview-1">
        <div id="ensign-nivoslider" class="slides">
            <img src=<%=Util.fullPath("bookhome/img/slider/2.jpg")%> alt="" title="#slider-direction-1"/>
            <img src=<%=Util.fullPath("bookhome/img/slider/1.jpg")%> alt="" title="#slider-direction-2"/>
        </div>
        <!-- direction 1 -->
        <div id="slider-direction-1" class="text-center slider-direction">
            <!-- layer 1 -->
            <div class="layer-1">
                <h2 class="title-1">MỪNG NGÀY NHÀ GIÁO VIỆT NAM</h2>
            </div>
            <!-- layer 2 -->
            <div class="layer-2">
                <p class="title-2">Giảm giá trực tiếp 50K cho hóa đơn trên 200K</p>
            </div>
            <!-- layer 3 -->
            <div class="layer-3">
                <a href="#" class="title-3">Xem thêm</a>
            </div>
            <!-- layer 4 -->
            <%--            <div class="layer-4">--%>
            <%--                <form action="#" class="title-4">--%>
            <%--                    <input type="text" placeholder="Tìm kiếm sách ">--%>
            <%--                    <button type="submit"><i class="fa fa-search"></i></button>--%>
            <%--                </form>--%>
            <%--            </div>--%>
        </div>
        <!-- direction 2 -->
        <div id="slider-direction-2" class="slider-direction">
            <!-- layer 1 -->
            <div class="layer-1">
                <h2 class="title-1">HỘI SÁCH CUỐI TUẦN</h2>
            </div>
            <!-- layer 2 -->
            <div class="layer-2">
                <p class="title-2">Mua sắm phá giá - 11/11</p>
            </div>
            <!-- layer 3 -->
            <div class="layer-3">
                <a href="#" class="title-3">Xem thêm</a>
            </div>
            <!-- layer 4 -->
            <%--            <div class="layer-4">--%>
            <%--                <form action="#" class="title-4">--%>
            <%--                    <input type="text" placeholder="Tìm kiếm sách ">--%>
            <%--                    <button type="submit"><i class="fa fa-search"></i></button>--%>
            <%--                </form>--%>
            <%--            </div>--%>
        </div>
    </div>
</div>
<!-- slider Area End-->
<!-- Online Banner Area Start -->
<div class="online-banner-area">
    <div class="container">
        <div class="banner-title text-center">
            <h2>NHÀ SÁCH <span>WRITER</span></h2>
            <p>Nhà Sách Writed là cửa hàng sách lớn nhất trên thế giới có rất nhiều sách phổ biến và sách hàng đầu được
                trình bày ở đây. Các tác giả hàng đầu ở đây chỉ cần đăng ký địa chỉ email của bạn và được cập nhật với
                chúng tôi.</p>
        </div>
        <div class="row">
            <div class="banner-list">
                <%
                    ArrayList<Sach> listSachBanChay = (ArrayList<Sach>) request.getAttribute("listSachBanChay");
                    ArrayList<Sach> listSachMoiNhat = (ArrayList<Sach>) request.getAttribute("listSachMoiNhat");
                    for (int i = 0; i < (listSachBanChay.size())-9; i++) {
                %>
                <div class="col-md-4 col-sm-6">
                    <div class="single-banner">
                        <a href=<%= Util.fullPath("singleProductController?idProduct=")+listSachBanChay.get(i).getMaSach()%>>
                            <img alt="img" src=<%=Util.fullPath(listSachBanChay.get(i).getHinhAnh())%>>
                        </a>
                        <div class="banner-bottom text-center">
                            <a href="#">TOP SÁCH BÁN CHẠY 2019</a>
                        </div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </div>
</div>
<!-- Online Banner Area End -->
<!-- Featured Product Area Start -->
<div class="featured-product-area section-padding">
    <h2 class="section-title">SÁCH NỔI BẬT</h2>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="tab-menu">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="first-item active">
                            <a href="#arrival" aria-controls="arrival" role="tab" data-toggle="tab">SÁCH MỚI</a>
                        </li>
                        <li role="presentation">
                            <a href="#sale" aria-controls="sale" role="tab" data-toggle="tab">SÁCH BÁN CHẠY</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="product-list tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="arrival">
                    <div class="featured-product-list indicator-style">
                        <%for(int i= 0; i < listSachMoiNhat.size();i++){%>
                        <div class="single-p-banner">
                            <div class="col-md-3">
                                <div class="single-banner">
                                    <div class="product-wrapper">
                                        <a href=<%= Util.fullPath("singleProductController?idProduct=")+listSachMoiNhat.get(i).getMaSach()%> class="single-banner-image-wrapper">
                                            <img alt="" src=<%=Util.fullPath(listSachMoiNhat.get(i).getHinhAnh())%>>
                                        </a>
                                        <div class="product-description">
                                            <div class="functional-buttons">
                                                <a title="Thêm vào giỏ hàng " href=<%=Util.fullPath("GioHangController?maSach=" + listSachMoiNhat.get(i).getMaSach())%> >
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                                <a href="#" title="Thêm vào danh sách yêu thích">
                                                    <i class="far fa-heart"></i>
                                                </a>
                                                <a href="#" title="Xem nhanh" data-toggle="modal"
                                                   data-target="#productModal<%=listSachMoiNhat.get(i).getMaSach()%>">
                                                    <i class="fas fa-compress-alt"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="banner-bottom text-center">
                                        <div class="banner-bottom-title" style="height: 40px">
                                            <a href="<%= Util.fullPath("singleProductController?idProduct=")+listSachMoiNhat.get(i).getMaSach()%>"><%=listSachMoiNhat.get(i).getTenSach()%>
                                            </a>
                                        </div>
                                        <div class="price-2"><%=listSachMoiNhat.get(i).getGia()%>.000<span>đ</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="single-banner">
                                    <div class="product-wrapper">
                                        <a href=<%= Util.fullPath("singleProductController?idProduct=")+listSachMoiNhat.get(++i).getMaSach()%> class="single-banner-image-wrapper">
                                            <img alt="" src=<%=Util.fullPath(listSachMoiNhat.get(i).getHinhAnh())%>>
                                        </a>
                                        <div class="product-description">
                                            <div class="functional-buttons">
                                                <a title="Thêm vào giỏ hàng" href=<%=Util.fullPath("GioHangController?maSach=" + listSachMoiNhat.get(i).getMaSach())%> >
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                                <a href="#" title="Thêm vào danh sách yêu thích">
                                                    <i class="far fa-heart"></i>
                                                </a>
                                                <a href="#" title="Xem nhanh" data-toggle="modal"
                                                   data-target="#productModal<%=listSachMoiNhat.get(i).getMaSach()%>">
                                                    <i class="fas fa-compress-alt"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="banner-bottom text-center">
                                        <div class="banner-bottom-title" style="height: 40px">
                                            <a href="<%= Util.fullPath("singleProductController?idProduct=")+listSachMoiNhat.get(i).getMaSach()%>"><%=listSachMoiNhat.get(i).getTenSach()%>
                                            </a>
                                        </div>
                                        <div class="price-2"><%=listSachMoiNhat.get(i).getGia()%>.000<span>đ</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%}%>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="sale">
                    <div class="featured-product-list indicator-style">
                        <%for(int i= 0; i < listSachBanChay.size();i++){%>
                        <div class="single-p-banner">
                            <div class="col-md-3">
                                <div class="single-banner">
                                    <div class="product-wrapper">
                                        <a href=<%= Util.fullPath("singleProductController?idProduct=")+listSachBanChay.get(i).getMaSach()%> class="single-banner-image-wrapper">
                                            <img alt="" src=<%=Util.fullPath(listSachBanChay.get(i).getHinhAnh())%>>
                                        </a>
                                        <div class="product-description">
                                            <div class="functional-buttons">
                                                <a title="Thêm vào giỏ hàng " href=<%=Util.fullPath("GioHangController?maSach=" + listSachBanChay.get(i).getMaSach())%> >
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                                <a href="#" title="Thêm vào danh sách yêu thích">
                                                    <i class="far fa-heart"></i>
                                                </a>
                                                <a href="#" title="Xem nhanh" data-toggle="modal"
                                                   data-target="#productModal<%=listSachBanChay.get(i).getMaSach()%>">
                                                    <i class="fas fa-compress-alt"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="banner-bottom text-center">
                                        <div class="banner-bottom-title" style="height: 40px">
                                            <a href="<%= Util.fullPath("singleProductController?idProduct=")+listSachBanChay.get(i).getMaSach()%>"><%=listSachBanChay.get(i).getTenSach()%>
                                            </a>
                                        </div>
                                        <div class="price-2"><%=listSachBanChay.get(i).getGia()%>.000<span>đ</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="single-banner">
                                    <div class="product-wrapper">
                                        <a href=<%= Util.fullPath("singleProductController?idProduct=")+listSachBanChay.get(++i).getMaSach()%> class="single-banner-image-wrapper">
                                            <img alt="" src=<%=Util.fullPath(listSachBanChay.get(i).getHinhAnh())%>>
                                        </a>
                                        <div class="product-description">
                                            <div class="functional-buttons">
                                                <a title="Thêm vào giỏ hàng" href=<%=Util.fullPath("GioHangController?maSach=" + listSachBanChay.get(i).getMaSach())%> >
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                                <a href="#" title="Thêm vào danh sách yêu thích">
                                                    <i class="far fa-heart"></i>
                                                </a>
                                                <a href="#" title="Xem nhanh" data-toggle="modal"
                                                   data-target="#productModal<%=listSachBanChay.get(i).getMaSach()%>">
                                                    <i class="fas fa-compress-alt"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="banner-bottom text-center">
                                        <div class="banner-bottom-title" style="height: 40px">
                                            <a href="<%= Util.fullPath("singleProductController?idProduct=")+listSachBanChay.get(i).getMaSach()%>"><%=listSachBanChay.get(i).getTenSach()%>
                                            </a>
                                        </div>
                                        <div class="price-2"><%=listSachBanChay.get(i).getGia()%>.000<span>đ</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%}%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Featured Product Area End -->
<!-- Counter Area Start -->
<div class="counter-area section-padding text-center" style="margin-bottom: 80px">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-3 col-xs-6">
                <div class="single-counter wow" data-wow-duration="1.5s" data-wow-delay=".3s">
                    <div class="counter-info">
								<span class="fcount">
									<span class="counter">3725</span>
								</span>
                        <h3>ĐẦU SÁCH</h3>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
                <div class="single-counter wow" data-wow-duration="1.5s" data-wow-delay=".3s">
                    <div class="counter-info">
								<span class="fcount">
									<span class="counter">950</span>
								</span>
                        <h3>NGƯỜI DÙNG</h3>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
                <div class="single-counter wow" data-wow-duration="1.5s" data-wow-delay=".3s">
                    <div class="counter-info">
								<span class="fcount">
									<span class="counter">1450</span>
								</span>
                        <h3>TÁC GIẢ HAY</h3>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
                <div class="single-counter wow" data-wow-duration="1.5s" data-wow-delay=".3s">
                    <div class="counter-info">
								<span class="fcount">
									<span class="counter">62</span>
								</span>
                        <h3>GIẢI THƯỞNG</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Counter Area End -->
<!-- News Letter Area Start -->
<div class="newsletter-area text-center" >
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="newsletter-title">
                    <h2>ĐĂNG KÍ NHẬN BẢN TIN WITTER</h2>
                    <p>Hàng ngàn sản phẩm và chương trình khuyến mãi siêu hấp dẫn đang chờ bạn.</p>
                </div>
                <div class="letter-box">
                    <form action="#" method="post" class="search-box">
                        <div>
                            <input type="text" placeholder="Địa chỉ email của bạn ...">
                            <button type="submit" class="btn btn-search">ĐĂNG KÍ<span><i class="flaticon-school-1"></i></span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- News Letter Area End -->
<!-- Footer Area Start -->
<%@ include file="footer.jsp"%>
<!-- Footer Area End -->
<!--Quickview Product Start -->
<%
    for (int i = 0; i < listSachMoiNhat.size(); i++) {
%>
<div id="quickview-wrapper">
    <%--    <!-- Modal -->--%>
    <div class="modal fade" id="productModal<%=listSachMoiNhat.get(i).getMaSach()%>" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <div class="modal-product" style="display: flex">
                        <div class="product-images" style="width: 60%">
                            <div class="main-image images">
                                <img alt="" src=<%=Util.fullPath(listSachMoiNhat.get(i).getHinhAnh())%>>
                            </div>
                        </div>
                        <div class="product-info">
                            <h1 style="font-size: 22px"><%=listSachMoiNhat.get(i).getTenSach()%>
                            </h1>
                            <div class="price-box">
                                <p class="s-price" ><span class="special-price"><span
                                        class="amount" style="font-size: 25px"><%=listSachMoiNhat.get(i).getGia()%>.000đ</span></span></p>
                            </div>
                            <a href="<%= Util.fullPath("singleProductController?idProduct=")+listSachMoiNhat.get(i).getMaSach()%>" class="see-all">Xem chi tiết</a>
                            <div class="quick-add-to-cart">
                                <a style="display: flex;justify-content: center;align-items: center;" class="single_add_to_cart_button"
                                   href=<%=Util.fullPath("GioHangController?maSach=" + listSachMoiNhat.get(i).getMaSach())%>>Mua Ngay</a>
                            </div>
                            <div style="height: 300px; overflow-y: scroll" class="quick-desc">
                                <%=listSachMoiNhat.get(i).getMoTa()%>
                            </div>
                        </div><!-- .product-info -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%}%>
<!--End of Quickview Product-->
<!-- all js here -->
<!-- jquery latest version -->
<%@include file="script.jsp"%>
</body>
</html>