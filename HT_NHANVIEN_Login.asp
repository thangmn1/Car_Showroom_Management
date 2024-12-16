<!--#include file="db_connection.asp"-->

<%
    ' Xử lý khi người dùng nhấn nút đăng nhập
    If Request.ServerVariables("REQUEST_METHOD") = "POST" Then
        Dim userId, password, sql, rs
        userId = Trim(Request.Form("userid"))
        password = Trim(Request.Form("password"))

        ' Kiểm tra user_id và password có được nhập không
        If userId = "" Or password = "" Then
            Response.Write("<script>alert('Vui lòng nhập đầy đủ User ID và Password!');</script>")
        Else
            On Error Resume Next ' Bắt lỗi khi thực thi câu lệnh SQL

            ' Truy vấn kiểm tra user_id, password, user_state và user_role
            sql = "SELECT user_role, user_state FROM Users WHERE user_id = '" & userId & "' AND password = '" & password & "'"
            
            set rs = Server.CreateObject("ADODB.Recordset")
            rs.Open sql, conn

            ' Kiểm tra lỗi truy vấn SQL
            If Err.Number <> 0 Then
                Response.Write("<script>alert('Lỗi khi thực thi truy vấn: " & Err.Description & "');</script>")
                Err.Clear
            Else
                If Not rs.EOF Then
                    Dim userRole, userState
                    userRole = rs("user_role")
                    userState = rs("user_state")

                    ' Kiểm tra user_state
                    If userState = "active" Then
                        ' Tạo session để lưu thông tin đăng nhập
                        Session("user_id") = userId
                        Session("user_role") = userRole
                        Session("login") = True

                        ' Điều hướng trang dựa vào user_role
                        If userRole = "Manager" Then
                            Response.Redirect "HT_NHANVIEN_Quanlynhanvien.asp"
                        ElseIf userRole = "Employee" Then
                            Response.Redirect "HT_DIEMDANH_Quanlydiemdanh.asp"
                        End If
                    Else
                        Response.Write("<script>alert('Tài khoản không hoạt động.');</script>")
                    End If
                Else
                    Response.Write("<script>alert('User ID hoặc Password không chính xác.');</script>")
                End If
            End If

            ' Đóng kết nối và giải phóng đối tượng
            rs.Close
            Set rs = Nothing

            On Error GoTo 0 ' Tắt chế độ bắt lỗi
        End If
    End If
%>





<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ĐĂNG NHẬP</title>
    <!-- Nhúng CSS -->
    <!--#include file="wwroot/css/css.asp"-->
    <!--#include file="wwroot/css/login_css.asp"-->
    
</head>
<body>
    <!-- Header -->
    <!--#include file="includes/header_hethong.asp"-->
    
    <!-- Main Content -->
    <div class="login-container">
        <!-- Tiêu đề -->
        <div class="login-header">Tài khoản của bạn</div>
        
        <!-- Tab Đăng nhập / Đăng ký -->
        <div class="login-tabs">
            <div class="login-tab active">Đăng nhập</div>
            <div class="login-tab">Đăng ký</div>
        </div>
        
        <!-- Form Đăng nhập -->
        <form method="POST" action="HT_NHANVIEN_Login.asp">
            <div class="login-form">
                <div class="login-input-group">
                    <label for="userid">User ID</label>
                    <input type="text" id="userid" name="userid" placeholder="Nhập User ID">
                </div>
                <div class="login-input-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Nhập Password">
                </div>
                <a href="#" class="login-forgot-password">Quên mật khẩu?</a>
                <button type="submit" class="login-button">Đăng nhập</button>
            </div>
        </form>
        
        <!-- Phần Đăng ký -->
        <div class="login-register-container">
            <p>Chưa có tài khoản? Đăng ký ngay để nhận thông tin mới nhất.</p>
            <a href="#" class="login-register-button">Đăng ký</a>
        </div>
    </div>
    <!-- Footer -->
    <!--#include file="includes/footer.asp"-->
</body>
</html>


