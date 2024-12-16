<!--#include file="db_connection.asp"-->
<%
    ' Kiểm tra xem người dùng đã đăng nhập và có quyền Manager
    If Session("login") = True And Session("user_role") = "Manager" Then
        ' Nếu đúng, cho phép mở trang
        Response.Write("Chào mừng, bạn là Manager và đã đăng nhập.")
    Else
        ' Nếu không, chuyển hướng đến trang đăng nhập hoặc thông báo lỗi
        Response.Redirect("HT_NHANVIEN_Login.asp")
    End If
%>



<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QUẢN LÝ SHOWROOM</title>
    <!-- Nhúng CSS -->
    <!--#include file="wwroot/css/css.asp"-->
    <!--#include file="wwroot/css/quanlynhanvien.asp"-->
    
</head>
<body>
    <!-- Header -->
    <!--#include file="includes/header_hethong.asp"-->
    
    <!-- Main Content -->
    <div class="QLNV-table-container">
        <table class="QLNV-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Họ Tên</th>
                    <th>Kiểu Người Dùng</th>
                    <th>Trạng Thái</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>001</td>
                    <td>Nguyễn Duy Hoàng</td>
                    <td>Nhân viên</td>
                    <td class="QLNV-status-active">Active</td>
                    <td><button class="QLNV-edit-btn">Chỉnh sửa</button></td>
                </tr>
                <tr>
                    <td>002</td>
                    <td>Lê Xuân Bắc</td>
                    <td>Nhân viên</td>
                    <td class="QLNV-status-active">Active</td>
                    <td><button class="QLNV-edit-btn">Chỉnh sửa</button></td>
                </tr>
                <tr>
                    <td>005</td>
                    <td>Nguyễn A</td>
                    <td>Nhân viên</td>
                    <td class="QLNV-status-frozen">Frozen</td>
                    <td><button class="QLNV-edit-btn">Chỉnh sửa</button></td>
                </tr>
            </tbody>
        </table>
    </div>
    
    <!-- Phân trang -->
    <div class="QLNV-pagination">
        <a href="#">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">4</a>
        <a href="#">5</a>
        <a href="#">6</a>
    </div>

    <!-- Footer -->
    <!--#include file="includes/footer.asp"-->
</body>
</html>


