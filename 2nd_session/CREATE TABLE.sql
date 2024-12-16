-- Use the Car_Showroom_Management database
USE Car_Showroom_Management;
GO

-- Create Users table
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Users')
    DROP TABLE dbo.Users;
GO

BEGIN
    CREATE TABLE Users (
        user_id INT PRIMARY KEY IDENTITY,
        name NVARCHAR(100) NOT NULL,
        user_role NVARCHAR(50) CHECK (user_role IN ('Customer', 'Manager', 'Employee')),
        phone_number NVARCHAR(20),
        user_state NVARCHAR(50) CHECK (user_state IN ('active', 'frozen', 'hide')),
        password NVARCHAR(255) NOT NULL -- Thêm cột password
    );
END
GO

-- Create Cars table
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Cars')
    DROP TABLE dbo.Cars;
GO

BEGIN
    CREATE TABLE Cars (
        car_id INT PRIMARY KEY IDENTITY,
        car_model NVARCHAR(100),
        car_state NVARCHAR(50) CHECK (car_state IN ('active', 'sold', 'hide')),
        car_color NVARCHAR(50),
        car_brand NVARCHAR(100),
        car_price DECIMAL(18, 2),
        car_availability BIT
    );
END
GO

-- Create Employees table
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Employees')
    DROP TABLE dbo.Employees;
GO

BEGIN
    CREATE TABLE Employees (
        emp_id INT PRIMARY KEY IDENTITY,
        user_id INT NOT NULL,
        emp_state NVARCHAR(50) CHECK (emp_state IN ('accountant', 'purchase', 'saleperson')),
        FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
    );
END
GO

-- Create CarComments table
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'CarComments')
    DROP TABLE dbo.CarComments;
GO

BEGIN
    CREATE TABLE CarComments (
        comment_id INT PRIMARY KEY IDENTITY,
        car_id INT NOT NULL,
        user_id INT NOT NULL,
        comment NVARCHAR(MAX),
        created_at DATETIME DEFAULT GETDATE(),
        FOREIGN KEY (car_id) REFERENCES Cars(car_id) ON DELETE CASCADE,
        FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
    );
END
GO

-- Create CarOrders table
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'CarOrders')
    DROP TABLE dbo.CarOrders;
GO

BEGIN
    CREATE TABLE CarOrders (
        order_id INT PRIMARY KEY IDENTITY,
        car_id INT NULL,  -- Make car_id nullable
        user_id INT NOT NULL,
        order_date DATETIME DEFAULT GETDATE(),
        status NVARCHAR(50) CHECK (status IN ('pending', 'confirmed', 'completed', 'cancelled')),
        FOREIGN KEY (car_id) REFERENCES Cars(car_id) ON DELETE SET NULL,  -- Updated with nullable car_id
        FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
    );
END
GO

-- Create CarSales table
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'CarSales')
    DROP TABLE dbo.CarSales;
GO

BEGIN
    CREATE TABLE CarSales (
        sale_id INT PRIMARY KEY IDENTITY,
        car_id INT NULL,  -- Make car_id nullable
        order_id INT NOT NULL,
        sale_date DATETIME DEFAULT GETDATE(),
        sale_price DECIMAL(18, 2),
        FOREIGN KEY (car_id) REFERENCES Cars(car_id) ON DELETE SET NULL,  -- Updated with nullable car_id
        FOREIGN KEY (order_id) REFERENCES CarOrders(order_id) ON DELETE CASCADE
    );
END
GO

-- Create Appointments table
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Appointments')
    DROP TABLE dbo.Appointments;
GO

BEGIN
    CREATE TABLE Appointments (
        appointment_id INT PRIMARY KEY IDENTITY,
        user_id INT NOT NULL,
        car_id INT NOT NULL,
        appointment_date DATETIME NOT NULL,
        status NVARCHAR(50) CHECK (status IN ('scheduled', 'completed', 'cancelled')),
        FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
        FOREIGN KEY (car_id) REFERENCES Cars(car_id) ON DELETE CASCADE
    );
END
GO

-- Create Purchases table
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Purchases') 
    DROP TABLE dbo.Purchases;
GO
BEGIN
    CREATE TABLE Purchases (
        purchase_id INT PRIMARY KEY IDENTITY,
        car_id INT NOT NULL,
        purchase_date DATETIME DEFAULT GETDATE(),
        purchase_price DECIMAL(18, 2),
        condition NVARCHAR(255),
        FOREIGN KEY (car_id) REFERENCES Cars(car_id) ON DELETE CASCADE
    );
END
GO

-- Create Attendance table
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Attendance') 
    DROP TABLE dbo.Attendance;
GO
BEGIN
    CREATE TABLE Attendance (
        attendance_id INT PRIMARY KEY IDENTITY,
        emp_id INT NOT NULL,
        date DATE NOT NULL,
        status NVARCHAR(50) CHECK (status IN ('present', 'absent', 'late', 'on leave')),
        FOREIGN KEY (emp_id) REFERENCES Employees(emp_id) ON DELETE CASCADE
    );
END
GO

-- Create Salaries table
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Salaries') 
    DROP TABLE dbo.Salaries;
GO
BEGIN
    CREATE TABLE Salaries (
        salary_id INT PRIMARY KEY IDENTITY,
        emp_id INT NOT NULL,
        amount DECIMAL(18, 2),
        pay_date DATE NOT NULL,
        FOREIGN KEY (emp_id) REFERENCES Employees(emp_id) ON DELETE CASCADE
    );
END
GO

-- Create UserActivities table
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'UserActivities') 
    DROP TABLE dbo.UserActivities;
GO
BEGIN
    CREATE TABLE UserActivities (
        activity_id INT PRIMARY KEY IDENTITY,
        user_id INT NOT NULL,
        activity_type NVARCHAR(100),
        activity_time DATETIME DEFAULT GETDATE(),
        details NVARCHAR(MAX),
        FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
    );
END
GO

