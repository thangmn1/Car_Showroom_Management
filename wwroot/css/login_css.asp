<style>
    /* Container chính */
    .login-container {
        width: 40%;
        margin: 250px auto 50px auto; /* Tự động canh giữa ngang */
        padding: 30px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        background-color: #fff;
        border-radius: 8px;
    }

    /* Tiêu đề Tài khoản của bạn */
    .login-header {
        text-align: center;
        font-size: 32px;
        color: #333;
        margin-bottom: 20px;
    }

    /* Phần tab Đăng nhập và Đăng ký */
    .login-tabs {
        display: flex;
        justify-content: space-between;
        border-bottom: 2px solid #ddd;
    }

    .login-tab {
        padding: 10px 20px;
        font-size: 18px;
        font-weight: bold;
        cursor: pointer;
        text-transform: uppercase;
    }

    .login-tab.active {
        background-color: #ff0066;
        color: #fff;
    }

    /* Phần form đăng nhập */
    .login-form {
        margin-top: 20px;
    }

    .login-input-group {
        margin-bottom: 15px;
    }

    .login-input-group label {
        display: block;
        font-size: 16px;
        color: #555;
        margin-bottom: 5px;
    }

    .login-input-group input {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .login-forgot-password {
        color: #ff0066;
        text-decoration: none;
        font-size: 14px;
        display: block;
        margin-top: 10px;
    }

    .login-button {
        background-color: #550066;
        color: #fff;
        padding: 10px 20px;
        border: none;
        font-size: 16px;
        font-weight: bold;
        text-transform: uppercase;
        cursor: pointer;
        border-radius: 4px;
        width: 100%;
        text-align: center;
    }

    /* Phần Đăng ký bên phải */
    .login-register-container {
        margin-top: 30px;
        padding: 20px;
        background-color: #ddd;
        border-radius: 8px;
    }

    .login-register-container p {
        font-size: 14px;
        color: #555;
    }

    .login-register-button {
        display: block;
        margin-top: 10px;
        padding: 10px 20px;
        background-color: #ff0066;
        color: #fff;
        text-align: center;
        font-weight: bold;
        text-transform: uppercase;
        border-radius: 4px;
        text-decoration: none;
        cursor: pointer;
    }


</style>