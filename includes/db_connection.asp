<%
    ' Khởi tạo đối tượng kết nối
    set conn = Server.CreateObject("ADODB.Connection")

    ' Chuỗi kết nối tới cơ sở dữ liệu SQL Server
    connstr = "Provider=SQLOLEDB;Data Source=DESKTOP-4K551KF\SQLEXPRESS;Initial Catalog=Car_Showroom_Management;User ID=sa;Password=thangmn1;"

    ' Bỏ qua lỗi tạm thời
    On Error Resume Next

    ' Mở kết nối
    conn.open connstr

    ' Kiểm tra xem có lỗi trong quá trình kết nối không
    If Err.Number <> 0 Then
        ' Hiển thị lỗi kết nối nếu có
        Response.Write("Lỗi kết nối: " & Err.Description)
    Else
        ' Thông báo kết nối thành công
        Response.Write("Kết nối thành công tới SQL Server!")
    End If

    ' Hủy bỏ lỗi nếu có
    On Error GoTo 0
%>
