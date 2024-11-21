-- Create the Car_Showroom_Management database
CREATE DATABASE Car_Showroom_Management;
GO

-- Use the Car_Showroom_Management database
USE Car_Showroom_Management;
GO

-- Create Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(100) NOT NULL,
    user_role NVARCHAR(50) CHECK (user_role IN ('Customer', 'Manager', 'Employee')),
    phone_number NVARCHAR(20),
    user_state NVARCHAR(50) CHECK (user_state IN ('active', 'frozen', 'hide'))
);
GO

-- Create Employees table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY IDENTITY,
    user_id INT FOREIGN KEY REFERENCES Users(user_id),
    emp_state NVARCHAR(50) CHECK (emp_state IN ('accountant', 'purchase', 'saleperson'))
);
GO

-- Create Cars table
CREATE TABLE Cars (
    car_id INT PRIMARY KEY IDENTITY,
    car_model NVARCHAR(100),
    car_state NVARCHAR(50) CHECK (car_state IN ('active', 'sold', 'hide')),
    car_color NVARCHAR(50),
    car_brand NVARCHAR(100),
    car_price DECIMAL(18, 2),
    car_availability BIT
);
GO

-- Create CarComments table
CREATE TABLE CarComments (
    comment_id INT PRIMARY KEY IDENTITY,
    car_id INT FOREIGN KEY REFERENCES Cars(car_id),
    user_id INT FOREIGN KEY REFERENCES Users(user_id),
    comment NVARCHAR(MAX),
    created_at DATETIME DEFAULT GETDATE()
);
GO

-- Create CarOrders table
CREATE TABLE CarOrders (
    order_id INT PRIMARY KEY IDENTITY,
    car_id INT FOREIGN KEY REFERENCES Cars(car_id),
    user_id INT FOREIGN KEY REFERENCES Users(user_id),
    order_date DATETIME DEFAULT GETDATE(),
    status NVARCHAR(50) CHECK (status IN ('pending', 'confirmed', 'completed', 'cancelled'))
);
GO

-- Create CarSales table
CREATE TABLE CarSales (
    sale_id INT PRIMARY KEY IDENTITY,
    car_id INT FOREIGN KEY REFERENCES Cars(car_id),
    order_id INT FOREIGN KEY REFERENCES CarOrders(order_id),
    sale_date DATETIME DEFAULT GETDATE(),
    sale_price DECIMAL(18, 2)
);
GO

-- Create Appointments table
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY IDENTITY,
    user_id INT FOREIGN KEY REFERENCES Users(user_id),
    car_id INT FOREIGN KEY REFERENCES Cars(car_id),
    appointment_date DATETIME NOT NULL,
    status NVARCHAR(50) CHECK (status IN ('scheduled', 'completed', 'cancelled'))
);
GO

-- Create Purchases table
CREATE TABLE Purchases (
    purchase_id INT PRIMARY KEY IDENTITY,
    car_id INT FOREIGN KEY REFERENCES Cars(car_id),
    purchase_date DATETIME DEFAULT GETDATE(),
    purchase_price DECIMAL(18, 2),
    condition NVARCHAR(255)
);
GO

-- Create Attendance table
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY IDENTITY,
    emp_id INT FOREIGN KEY REFERENCES Employees(emp_id),
    date DATE NOT NULL,
    status NVARCHAR(50) CHECK (status IN ('present', 'absent', 'late', 'on leave'))
);
GO

-- Create Salaries table
CREATE TABLE Salaries (
    salary_id INT PRIMARY KEY IDENTITY,
    emp_id INT FOREIGN KEY REFERENCES Employees(emp_id),
    amount DECIMAL(18, 2),
    pay_date DATE NOT NULL
);
GO

-- Create UserActivities table
CREATE TABLE UserActivities (
    activity_id INT PRIMARY KEY IDENTITY,
    user_id INT FOREIGN KEY REFERENCES Users(user_id),
    activity_type NVARCHAR(100),
    activity_time DATETIME DEFAULT GETDATE(),
    details NVARCHAR(MAX)
);
GO
