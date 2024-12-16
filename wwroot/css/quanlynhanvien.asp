
    <style>
    /* Bảng nhân viên */
    .QLNV-table-container {
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 200px; /* Khoảng cách từ header */
        margin-bottom: 50px; /* Khoảng cách đến footer */
    }

    .QLNV-table {
        width: 80%;
        border-collapse: collapse;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        background: linear-gradient(135deg, #4e54c8, #8f94fb);
        border-radius: 10px;
        overflow: hidden;
        color: white;
        font-family: Arial, sans-serif;
    }

    .QLNV-table th {
        background-color: #3a3e9e;
        padding: 15px;
        text-align: left;
        font-weight: bold;
        border: none;
    }

    .QLNV-table td {
        padding: 15px;
        text-align: left;
        border: none;
        border-bottom: 1px solid #7075f5;
    }

    .QLNV-table tr:nth-child(even) {
        background: #3a3e9e;
    }

    .QLNV-table tr:nth-child(odd) {
        background: #4e54c8;
    }

    /* Trạng thái */
    .QLNV-status-active {
        color: #00ff00;
        font-weight: bold;
    }

    .QLNV-status-frozen {
        color: #ff4d4d;
        font-weight: bold;
    }

    /* Nút chỉnh sửa */
    .QLNV-edit-btn {
        background-color: #ff3b7b;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-transform: uppercase;
        font-weight: bold;
        transition: background 0.3s;
    }

    .QLNV-edit-btn:hover {
        background-color: #e8326b;
    }

    /* Phân trang */
    .QLNV-pagination {
        display: flex;
        justify-content: center;
        margin-top: 5px; 
        margin-bottom: 5px; 
    }

    .QLNV-pagination a {
        background-color: #ff3b7b;
        color: white;
        padding: 10px 15px;
        margin: 0 5px;
        border-radius: 5px;
        text-decoration: none;
        font-weight: bold;
    }

    .QLNV-pagination a:hover {
        background-color: #e8326b;
    }

    /* Chữ đậm cho footer */
    footer strong {
        font-size: 1.1em;
    }

    
</style>