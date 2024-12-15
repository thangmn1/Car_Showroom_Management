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

-- Create Employees table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY IDENTITY,
    user_id INT NOT NULL,
    emp_state NVARCHAR(50) CHECK (emp_state IN ('accountant', 'purchase', 'saleperson')),
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);
GO

-- Create CarComments table
CREATE TABLE CarComments (
    comment_id INT PRIMARY KEY IDENTITY,
    car_id INT NOT NULL,
    user_id INT NOT NULL,
    comment NVARCHAR(MAX),
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);
GO

-- Create CarOrders table
CREATE TABLE CarOrders (
    order_id INT PRIMARY KEY IDENTITY,
    car_id INT NOT NULL,
    user_id INT NOT NULL,
    order_date DATETIME DEFAULT GETDATE(),
    status NVARCHAR(50) CHECK (status IN ('pending', 'confirmed', 'completed', 'cancelled')),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id) ON DELETE SET NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);
GO

-- Create CarSales table
CREATE TABLE CarSales (
    sale_id INT PRIMARY KEY IDENTITY,
    car_id INT NOT NULL,
    order_id INT NOT NULL,
    sale_date DATETIME DEFAULT GETDATE(),
    sale_price DECIMAL(18, 2),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id) ON DELETE SET NULL,
    FOREIGN KEY (order_id) REFERENCES CarOrders(order_id) ON DELETE CASCADE
);
GO

-- Create Appointments table
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY IDENTITY,
    user_id INT NOT NULL,
    car_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    status NVARCHAR(50) CHECK (status IN ('scheduled', 'completed', 'cancelled')),
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (car_id) REFERENCES Cars(car_id) ON DELETE CASCADE
);
GO

-- Create Purchases table
CREATE TABLE Purchases (
    purchase_id INT PRIMARY KEY IDENTITY,
    car_id INT NOT NULL,
    purchase_date DATETIME DEFAULT GETDATE(),
    purchase_price DECIMAL(18, 2),
    condition NVARCHAR(255),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id) ON DELETE CASCADE
);
GO

-- Create Attendance table
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY IDENTITY,
    emp_id INT NOT NULL,
    date DATE NOT NULL,
    status NVARCHAR(50) CHECK (status IN ('present', 'absent', 'late', 'on leave')),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id) ON DELETE CASCADE
);
GO

-- Create Salaries table
CREATE TABLE Salaries (
    salary_id INT PRIMARY KEY IDENTITY,
    emp_id INT NOT NULL,
    amount DECIMAL(18, 2),
    pay_date DATE NOT NULL,
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id) ON DELETE CASCADE
);
GO

-- Create UserActivities table
CREATE TABLE UserActivities (
    activity_id INT PRIMARY KEY IDENTITY,
    user_id INT NOT NULL,
    activity_type NVARCHAR(100),
    activity_time DATETIME DEFAULT GETDATE(),
    details NVARCHAR(MAX),
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);
GO
