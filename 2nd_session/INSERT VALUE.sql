

-- Use the Car_Showroom_Management database
USE Car_Showroom_Management;
GO



-- Insert 5 sample records into Users table
INSERT INTO Users (name, user_role, phone_number, user_state, password)
VALUES
    ('John Doe', 'Customer', '1234567890', 'active', 'password123'),
    ('Jane Smith', 'Manager', '0987654321', 'active', 'password456'),
    ('Mike Johnson', 'Employee', '1122334455', 'frozen', 'password789'),
    ('Sara Lee', 'Customer', '5566778899', 'hide', 'password000'),
    ('Tom Brown', 'Employee', '6677889900', 'active', 'passwordabc');
GO



-- Insert 5 sample records into Cars table
INSERT INTO Cars (car_model, car_state, car_color, car_brand, car_price, car_availability)
VALUES
    ('Model A', 'active', 'Red', 'Brand X', 20000.00, 1),
    ('Model B', 'sold', 'Blue', 'Brand Y', 15000.00, 0),
    ('Model C', 'active', 'Black', 'Brand Z', 25000.00, 1),
    ('Model D', 'hide', 'White', 'Brand X', 30000.00, 0),
    ('Model E', 'active', 'Silver', 'Brand Y', 22000.00, 1);
GO



-- Insert 5 sample records into Employees table
INSERT INTO Employees (user_id, emp_state)
VALUES
    (1, 'accountant'),
    (2, 'purchase'),
    (3, 'saleperson'),
    (4, 'accountant'),
    (5, 'purchase');
GO



-- Insert 5 sample records into CarComments table
INSERT INTO CarComments (car_id, user_id, comment)
VALUES
    (1, 1, 'Great car, I love the design!'),
    (2, 2, 'This car is sold, but still looks great.'),
    (3, 3, 'Nice features and comfortable ride.'),
    (4, 4, 'Not sure about this model, but it has potential.'),
    (5, 5, 'Excellent car, highly recommended!');
GO


-- Insert 5 sample records into CarOrders table
INSERT INTO CarOrders (car_id, user_id, status)
VALUES
    (1, 1, 'pending'),
    (2, 2, 'confirmed'),
    (3, 3, 'completed'),
    (4, 4, 'cancelled'),
    (5, 5, 'pending');
GO



-- Insert 5 sample records into CarSales table
INSERT INTO CarSales (car_id, order_id, sale_price)
VALUES
    (1, 1, 18000.00),
    (2, 2, 14000.00),
    (3, 3, 23000.00),
    (4, 4, 29000.00),
    (5, 5, 20000.00);
GO



-- Insert 5 sample records into Appointments table
INSERT INTO Appointments (user_id, car_id, appointment_date, status)
VALUES
    (1, 1, '2024-12-16 09:00:00', 'scheduled'),
    (2, 2, '2024-12-16 11:00:00', 'completed'),
    (3, 3, '2024-12-16 13:00:00', 'cancelled'),
    (4, 4, '2024-12-16 15:00:00', 'scheduled'),
    (5, 5, '2024-12-16 17:00:00', 'completed');
GO



-- Insert 5 sample records into Purchases table
INSERT INTO Purchases (car_id, purchase_price, condition) VALUES
    (1, 18000.00, 'New'),
    (2, 14000.00, 'Used'),
    (3, 23000.00, 'New'),
    (4, 29000.00, 'Used'),
    (5, 20000.00, 'New');
GO



-- Insert 5 sample records into Attendance table
INSERT INTO Attendance (emp_id, date, status) VALUES
    (1, '2024-12-16', 'present'),
    (2, '2024-12-16', 'absent'),
    (3, '2024-12-16', 'late'),
    (4, '2024-12-16', 'on leave'),
    (5, '2024-12-16', 'present');
GO



-- Insert 5 sample records into Salaries table
INSERT INTO Salaries (emp_id, amount, pay_date) VALUES
    (1, 3000.00, '2024-12-16'),
    (2, 3500.00, '2024-12-16'),
    (3, 3200.00, '2024-12-16'),
    (4, 2900.00, '2024-12-16'),
    (5, 3300.00, '2024-12-16');
GO


GO

-- Insert 5 sample records into UserActivities table
INSERT INTO UserActivities (user_id, activity_type, details) VALUES
    (1, 'Login', 'User logged in from IP 192.168.1.1'),
    (2, 'Logout', 'User logged out from IP 192.168.1.2'),
    (3, 'Login', 'User logged in from IP 192.168.1.3'),
    (4, 'Update Profile', 'User updated phone number'),
    (5, 'Login', 'User logged in from IP 192.168.1.4');
GO
