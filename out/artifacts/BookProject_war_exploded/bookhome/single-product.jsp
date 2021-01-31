<%@ page import="BEAN.Sach" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="BEAN.Comment" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Product Details || Witter Multipage Responsive Template</title>
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
                    <h2>Chi tiết sản phẩm</h2>
                    <ul class="breadcrumbs-list">
                        <li>
                            <a title="Return to Home" href="index.html">Trang chủ</a>
                        </li>
                        <li>Chi tiết sản phẩm</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumbs Area Start -->
<!-- Single Product Area Start -->
<div class="single-product-area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-7">
                <div class="single-product-image-inner">
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <% Sach sach = (Sach) request.getAttribute("sach");%>
                        <div role="tabpanel" class="tab-pane active" id="one" style="width: 90%; margin-bottom: 30px">
                            <a class="venobox" href="img/single-product/bg-1.jpg" data-gall="gallery" title="">
                                <img src=<%= sach.getHinhAnh()%>  alt="">
                            </a>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="two">
                            <a class="venobox" href="img/single-product/bg-2.jpg" data-gall="gallery" title="">
                                <img src=<%= sach.getHinhAnh()%>  alt="">
                            </a>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="three">
                            <a class="venobox" href="img/single-product/bg-3.jpg" data-gall="gallery" title="">
                                <img src=<%= sach.getHinhAnh()%>  alt="">
                            </a>
                        </div>
                    </div>
                    <!-- Nav tabs -->
                    <!-- <ul class="product-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#one" aria-controls="one" role="tab" data-toggle="tab"><img src="img/single-product/1.jpg" alt=""></a></li>
                        <li role="presentation"><a href="#two" aria-controls="two" role="tab" data-toggle="tab"><img src="img/single-product/2.jpg" alt=""></a></li>
                        <li role="presentation"><a href="#three" aria-controls="three" role="tab" data-toggle="tab"><img src="img/single-product/3.jpg" alt=""></a></li>
                    </ul> -->
                </div>
            </div>
            <div class="col-md-6 col-sm-5">
                <div class="single-product-details">
                    <h2><%= sach.getTenSach()%></h2>
                    <div class="single-product-price">
                        <h2><%= sach.getGia()%>.000đ</h2>
                    </div>
                    <form action="<%=Util.fullPath("GioHangController")%>" method="get">
                        <input style="visibility:hidden;" name="maSach" type="text" value=<%=sach.getMaSach()%>>
                        <div class="product-attributes clearfix">
                                <span class="pull-left" id="quantity-wanted-p">
									<span class="dec qtybutton">-</span>
									<input id="soLuongMua" type="text" name="soLuongMua" value="1"
                                           class="cart-plus-minus-box">
									<span class="inc qtybutton">+</span>
								</span>
                            <span>
                                    <input  type="submit" class="cart-btn btn-default" value="Thêm vào giỏ hàng">
                               </span>
                        </div>
                    </form>
                    <div class="add-to-wishlist">
                        <a class="wish-btn" href="cart.html">
                            <i class="far fa-heart"></i>
                            Thêm vào danh sách yêu thích
                        </a>
                    </div>
                    <!-- <div class="single-product-categories">
                       <label>Categories:</label>
                        <span>e-book, biological, business</span>
                    </div> -->
                    <!-- <div class="social-share">
                        <label>Share: </label>
                        <ul class="social-share-icon">
                            <li><a href="#"><i class="flaticon-social"></i></a></li>
                            <li><a href="#"><i class="flaticon-social-1"></i></a></li>
                            <li><a href="#"><i class="flaticon-social-2"></i></a></li>
                        </ul>
                    </div> -->
                    <!-- <div id="product-comments-block-extra">
                        <ul class="comments-advices">
                            <li>
                                <a href="#" class="open-comment-form">Đánh giá sản phẩm</a>
                            </li>
                        </ul>
                    </div> -->
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="p-details-tab-content">
                    <div class="p-details-tab">
                        <ul class="p-details-nav-tab" role="tablist">
                            <li role="presentation" class="active"><a href="#more-info" aria-controls="more-info" role="tab" data-toggle="tab">Giới thiệu sản phẩm</a></li>
                            <li role="presentation"><a href="#data" aria-controls="data" role="tab" data-toggle="tab">Thông tin sản phẩm</a></li>
                            <li role="presentation"><a href="#reviews" aria-controls="reviews" role="tab" data-toggle="tab">Bình luận sản phẩm</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <div class="tab-content review">
                        <div role="tabpanel" class="tab-pane active" id="more-info">
                            <p><%= sach.getMoTa()%></p>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="data">
                            <table class="table-data-sheet">
                                <tbody>
                                <tr class="odd">
                                    <td>Compositions</td>
                                    <td>Cotton</td>
                                </tr>
                                <tr class="even">
                                    <td>Styles</td>
                                    <td>Casual</td>
                                </tr>
                                <tr class="odd">
                                    <td>Properties</td>
                                    <td>Short Sleeve</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="reviews">
                            <div id="product-comments-block-tab">
                                <div class="comment-here">
                                    <div class="user-comment">
                                        <i class="fas fa-user-ninja"></i>
                                    </div>
                                    <form name="commentArea" class="AreaComment">
                                        <label style="display: block"><%=user!=null?user.getEmail():"NoName"%></label>
                                        <input type="text" placeholder="Thêm bình luận ...." name="commentText">
                                        <input type="button" value="Đăng" onclick="comment()">
                                    </form>
                                </div>
                                <div id="CommentArea">
                                    <%
                                        ArrayList<Comment> listComment = (ArrayList<Comment>) request.getAttribute("listComment");
                                        for (int i = 0; i < listComment.size(); i++) {
                                    %>
                                    <div class="comment-here" style="box-shadow: 0 1px 5px rgba(0, 0, 0, 0.15);padding: 10px 5px">
                                        <div class="user-comment">
                                            <i class="fas fa-user-ninja"></i>
                                        </div>
                                        <div class="AreaComment" style="display: flex;flex-direction: column;">
                                            <p style="margin: 0px;font-weight: 600"><%=listComment.get(i).getUserName()%></p>
                                            <p>
                                                <%=listComment.get(i).getCommentText()%>
                                            </p>
                                        </div>
                                    </div>

                                    <%}%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Single Product Area End -->
<!-- Related Product Area Start -->
<div class="related-product-area">
    <h2 class="section-title">Sản phẩm tương tự</h2>
    <div class="container">
        <div class="row">
            <div class="related-product indicator-style">
                <% ArrayList<Sach> listSach = (ArrayList<Sach>) request.getAttribute("listSach");
                    for (int i = 0; i < listSach.size(); i++) { %>
                <div class="col-md-3">
                    <div class="single-banner">
                        <div class="product-wrapper">
                            <a href="<%= Util.fullPath("singleProductController?idProduct=")+listSach.get(i).getMaSach()%>" class="single-banner-image-wrapper">
                                <img alt="" src=<%=listSach.get(i).getHinhAnh()%>>
                            </a>
                            <div class="product-description">
                                <div class="functional-buttons">
                                    <a title="Thêm vào giỏ hàng"
                                       href=<%=Util.fullPath("GioHangController?maSach=" + listSach.get(i).getMaSach())%>>
                                        <i class="fa fa-shopping-cart"></i>
                                    </a>
                                    <a href="#" title="Add to Wishlist">
                                        <i class="far fa-heart"></i>
                                    </a>
                                    <a href="#" title="Xem nhanh" data-toggle="modal"
                                       data-target="#productModal<%=listSach.get(i).getMaSach()%>">
                                        <i class="fas fa-compress-alt"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="banner-bottom text-center">
                            <div class="banner-bottom-title" style="height: 40px">
                                <a href="<%= Util.fullPath("singleProductController?idProduct=")+listSach.get(i).getMaSach()%>"><%=listSach.get(i).getTenSach()%>
                                </a>
                            </div>
                            <div class="price-2"><%=listSach.get(i).getGia()%>.000<span>đ</span>
                            </div>
                        </div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </div>
</div>
<!-- Related Product Area End -->
<!-- Footer Area Start -->
<%@include file="footer.jsp" %>
<!-- Footer Area End -->
<!--Quickview Product Start -->
<%
    for (int i = 0; i < listSach.size(); i++) {
%>
<div id="quickview-wrapper">
    <%--    <!-- Modal -->--%>
    <div class="modal fade" id="productModal<%=listSach.get(i).getMaSach()%>" tabindex="-1" role="dialog">
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
                                <img alt="" src=<%=Util.fullPath(listSach.get(i).getHinhAnh())%>>
                            </div>
                        </div>
                        <div class="product-info">
                            <h1 style="font-size: 22px"><%=listSach.get(i).getTenSach()%>
                            </h1>
                            <div class="price-box">
                                <p class="s-price"><span class="special-price"><span
                                        class="amount" style="font-size: 25px"><%=listSach.get(i).getGia()%>.000đ</span></span></p>
                            </div>
                            <a href="<%= Util.fullPath("singleProductController?idProduct=")+listSach.get(i).getMaSach()%>" class="see-all">Xem chi tiết</a>
                            <div class="quick-add-to-cart">
                                <a style="display: flex;justify-content: center;align-items: center;"
                                   class="single_add_to_cart_button"
                                   href=<%=Util.fullPath("GioHangController?maSach=" + listSach.get(i).getMaSach())%>>Mua
                                    Ngay</a>
                            </div>
                            <div style="height: 300px; overflow-y: scroll" class="quick-desc">
                                <%=listSach.get(i).getMoTa()%>
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
<!-- all js here -->
<%@include file="script.jsp" %>
<script type="text/javascript">
    function comment() {
        var xhttp;
        // var idUser = document.commentArea.idUser.value;
        var commentText = document.commentArea.commentText.value;
        if (window.XMLHttpRequest) {
            xhttp = new XMLHttpRequest();
        } else {
            xhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xhttp.onreadystatechange = function () {
            if (xhttp.readyState == 4) {
                var data = xhttp.responseText;
                document.getElementById("CommentArea").innerHTML = data;
            }
        }
        xhttp.open("POST", "http://localhost:8080/BookProject/CommentForwardController?commentText=" + commentText + "&maSach=" +<%=sach.getMaSach()%>, true);
        xhttp.send();
    }
</script>
</body>
</html>