<style>
    /* Reset CSS */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    body {
        background-color: #3b004c;
        color: #fff;
    }

    /* Header Tổng Thể */
    .header-container {
        width: 100%;
        height: 195px;
        position: fixed; /* Cố định header */
        top: 0;
        left: 0;
        background-color: #3b004c;
        z-index: 1000; /* Đảm bảo header nằm trên các thành phần khác */
    }

    /* Phần 1: Hãng xe */
    .header-top {
        width: 100%;
        height: 65px;
        background-color: #ffffff;
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 80px;
    }

    .header-top a img {
        width: 40px;
        height: 40px;
        transition: transform 0.3s;
    }

    .header-top a img:hover {
        transform: scale(1.1);
    }

    /* Phần 2: Tiêu đề và Tìm kiếm */
    /* Phần 2: Tiêu đề và Tìm kiếm */
    /* Phần 2: Tiêu đề và Tìm kiếm */
    .header-middle {
        width: 100%;
        height: 65px;
        display: flex;
        justify-content: space-between; /* Logo bên trái, tìm kiếm/đăng nhập bên phải */
        align-items: center;
        position: relative;
        padding: 0 92px; /* Khoảng cách đều cho mép trái và phải */
    }

    /* Logo Chính */
    .logo {
        position: absolute;
        top: -20px;
        left: 92px;
    }

    .logo img {
        width: 120px;
        height: 120px;
    }

    /* Tiêu đề */
    .header-title {
        position: absolute; /* Đảm bảo tiêu đề nằm giữa */
        left: 50%;
        transform: translateX(-50%); /* Căn giữa chính xác */
        height: 50px;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 40px;
        font-weight: bold;
        text-transform: uppercase;
        color: white;
    }

    /* Tìm kiếm và Đăng nhập */
    .search-login {
        display: flex;
        align-items: center;
        gap: 20px;
        position: absolute;
        right: 92px; /* Căn bên phải màn hình */
    }

    .search-box {
        display: flex;
    }

    .search-box input {
        width: 200px;
        height: 35px;
        padding: 5px 10px;
        border: 1px solid #ddd;
        border-radius: 5px 0 0 5px;
        outline: none;
    }

    .search-box button {
        width: 65px;
        height: 35px;
        background-color: #f39c12;
        color: white;
        border: none;
        border-radius: 0 5px 5px 0;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .search-box button:hover {
        background-color: #e67e22;
    }

    .login-button {
        padding: 8px 20px;
        background-color: #3b004c;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-size: 16px;
        transition: background-color 0.3s;
    }

    .login-button:hover {
        background-color: #e67e22;
    }

    /* Phần 3: Navigation */
    .header-bottom {
        width: 100%;
        height: 65px;
        background-color: #ffffff;
        display: flex;
        justify-content: center;
        align-items: center;
        border-top: 1px solid #ddd;
    }

    .header-bottom a {
        color: #3b004c;
        text-decoration: none;
        margin: 30px;
        font-size: 18px;
        font-weight: bold;
        text-transform: uppercase;
        transition: color 0.3s;
    }

    .header-bottom a:hover {
        color: #f39c12;
    }

    




    /* Main Navigation */
    .main-nav {
        display: flex;
        justify-content: center;
        background-color: #fff;
        color: #3b004c;
        padding: 12px 0;
        font-weight: bold;
        border-top: 1px solid #ddd; /* Đường kẻ trên thanh điều hướng */
    }

    .main-nav a {
        color: #3b004c;
        text-decoration: none;
        margin: 30px;
        font-size: 16px;
        transition: color 0.3s;
    }

    .main-nav a:hover {
        color: #f39c12;
    }

    /* Main Content */
    .main-container {
        margin-top: 215px; /* Khoảng cách dưới header (240px header + 20px dư) */
        margin-bottom: 20px; /* Khoảng cách trên footer */
        display: flex;
        justify-content: space-between;
        padding: 20px;
        position: relative; /* Để căn chỉnh phần tử con */
    }

    .column {
        width: 304px;
        background-color: white;
        border-radius: 5px;
        color: black;
        text-align: center;
        
    }

    .column h2 {
        margin-bottom: 20px;
    }

    .column img {
        width: 100%;
        height: 131px;
        margin-top: 10px;
        border-radius: 5px;
    }

    .column:first-child {
        position: absolute;
        left: 325px; /* Căn lề trái */
    }

    .column:last-child {
        position: absolute;
        right: 325px; /* Căn lề phải */
    }

    .center-images {
        margin-top: 0px; /* Thêm margin-top để đẩy xuống từ trên */
        margin-bottom: 0px; /* Thêm margin-bottom nếu cần */
        display: block;
        width: 560px;
        height: 290px;
        margin-left: auto;
        margin-right: auto; /* Đặt giữa màn hình */
    }

    .center-images img {
        width: 560px;
        height: 290px; /* Kích thước cố định */
        margin-bottom: 20px; /* Khoảng cách giữa hai ảnh */
        border-radius: 5px;
    }

    .button {
        display: inline-block;
        width: 304px;
        height: 80px;
        
        background: linear-gradient(90deg, #548DFF, #325599);
        color: white;
        text-transform: uppercase;
        font-size: 18px;
        font-weight: bold;
        text-align: center;
        line-height: 65px;
        border-radius: 5px;
        text-decoration: none;
        transition: background 0.3s;
    }

    .button:hover {
        background: linear-gradient(90deg, #325599, #548DFF);
    }

    .clickable {
        cursor: pointer;
        color: #325599;
        font-size: 16px;
        font-weight: bold;
        text-transform: uppercase;
        margin-top: 10px;
        display: inline-block;
    }

    .clickable:hover {
        color: #548DFF;
    }


    /* Footer */
    .footer-container {
        height: 80px;
        bottom: 0px; /* Đưa footer lên trên 200px */
        left: 0;
        width: 100%; /* Chiều rộng của footer */
        background-color: white;
        color: #3b004c;
        padding: 10px 20px; /* Kích thước chiều cao của footer dựa vào padding */
        display: flex;
        justify-content: space-around;
        align-items: center;
        font-size: 14px;
        z-index: 900;
        position: fixed; /* Giữ footer cố định trên màn hình */
    }


    .footer-container div {
        text-align: center;
    }

    .footer-container strong {
        font-weight: bold;
        font-size: 16px;
    }

    /* Set the size of images inside the .nav-bar to 50x50 */
    .nav-bar img {
        width: 50px;
        height: 50px;
    }
</style>
