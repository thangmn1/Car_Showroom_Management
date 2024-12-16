IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'Car_Showroom_Management')
BEGIN
    CREATE DATABASE Car_Showroom_Management;
END