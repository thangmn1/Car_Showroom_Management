<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QUẢN LÝ SHOWROOM</title>
    <!-- Nhúng CSS -->
    <!--#include file="wwroot/css/css.asp"-->
</head>
<body>
    <!-- Header -->
    <!--#include file="includes/header.asp"-->

    <!-- Main Content -->
    <main class="main-container">
        <!-- Dòng xe -->
        <div class="column">
            <a href="BH_TIMKIEM_Timkiemvsdanhgia.asp" class="button">DÒNG XE</a>
            <div>
                <span class="clickable" onclick="location.href='BH_TIMKIEM_Timkiemvsdanhgia.asp'">Sedan</span>
                <img src="wwroot/images/brands/toyota/3.png" alt="Sedan">
            </div>
            <div>
                <span class="clickable" onclick="location.href='BH_TIMKIEM_Timkiemvsdanhgia.asp'">SUV</span>
                <img src="wwroot/images/brands/toyota/2.png" alt="SUV">
            </div>
            <div>
                <span class="clickable" onclick="location.href='BH_TIMKIEM_Timkiemvsdanhgia.asp'">Bán tải</span>
                <img src="wwroot/images/brands/toyota/1.jpg" alt="Bán tải">
            </div>
        </div>
    
        <!-- Hình ảnh giữa -->
        <div class="center-images">
            <img src="wwroot/images/brands/toyota/5.png" alt="Ảnh minh họa 1">
            <img src="wwroot/images/brands/toyota/5.png" alt="Ảnh minh họa 2">
        </div>
    
        <!-- Xe mới -->
        <div class="column">
            <a href="BH_TIMKIEM_Timkiemvsdanhgia.asp" class="button">XE MỚI</a>
            <div>
                <span class="clickable" onclick="location.href='BH_TIMKIEM_Timkiemvsdanhgia.asp'">2024</span>
                <img src="wwroot/images/brands/toyota/3.png" alt="2024">
            </div>
            <div>
                <span class="clickable" onclick="location.href='BH_TIMKIEM_Timkiemvsdanhgia.asp'">2025</span>
                <img src="wwroot/images/brands/toyota/2.png" alt="2025">
            </div>
            <div>
                <span class="clickable" onclick="location.href='BH_TIMKIEM_Timkiemvsdanhgia.asp'">2026</span>
                <img src="wwroot/images/brands/toyota/1.jpg" alt="2026">
            </div>
        </div>
    </main>

    <!-- Footer -->
    <!--#include file="includes/footer.asp"-->
</body>
</html>
