<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản Lý Showroom</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #4a004a;
            color: white;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background-color: #2c002c;
        }

        header img {
            height: 50px;
        }

        nav {
            display: flex;
            gap: 20px;
        }

        nav a {
            color: white;
            text-decoration: none;
            font-size: 16px;
        }

        .main-container {
            display: flex;
            justify-content: space-around;
            margin: 20px auto;
            width: 90%;
        }

        .section {
            flex: 1;
            background-color: #5a005a;
            margin: 10px;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }

        .section h2 {
            background-color: #1d1d1d;
            padding: 10px;
            border-radius: 5px;
        }

        .section img {
            width: 80%;
            margin: 10px auto;
            display: block;
            cursor: pointer;
            border-radius: 10px;
        }

        footer {
            text-align: center;
            background-color: #2c002c;
            color: white;
            padding: 10px 0;
        }

        footer p {
            margin: 5px;
        }
    </style>
</head>
<body>
    <header>
        <img src="wwroot/images/logo/Logo.png" alt="Showroom Logo">
        <nav>
            <a href="#">Trang chủ</a>
            <a href="#">Quản lý người dùng</a>
            <a href="#">Quản lý nhân viên</a>
            <a href="#">Quản lý điểm danh</a>
            <a href="#">Quản lý xe</a>
        </nav>
        <button style="background: none; border: none; color: white; font-size: 16px;">Đăng nhập</button>
    </header>

    <div class="main-container">
        <div class="section">
            <h2>Dòng Xe</h2>
            <img src="sedan.png" alt="Sedan" onclick="alert('Sedan button clicked!')">
            <img src="suv.png" alt="SUV" onclick="alert('SUV button clicked!')">
            <img src="pickup.png" alt="Bán tải" onclick="alert('Pickup button clicked!')">
        </div>
        <div class="section">
            <h2>Xe Mới</h2>
            <img src="new_sedan.png" alt="New Sedan" onclick="alert('New Sedan button clicked!')">
            <img src="new_suv.png" alt="New SUV" onclick="alert('New SUV button clicked!')">
            <img src="new_pickup.png" alt="New Pickup" onclick="alert('New Pickup button clicked!')">
        </div>
    </div>

    <footer>
        <p>Showroom THDHB - Đại lý bán lẻ ô tô</p>
        <p>Đường dây nóng: 0966999966</p>
        <p>Địa chỉ: Số 69 đường 69</p>
    </footer>
</body>
</html>
