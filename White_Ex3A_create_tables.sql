DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;
CREATE TABLE IF NOT EXISTS Customer (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Phone_Number VARCHAR(20),
    Email VARCHAR(100),
    Street_Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(2),
    Zip_Code VARCHAR(10)
);
CREATE TABLE IF NOT EXISTS Service (
    Service_ID INT AUTO_INCREMENT PRIMARY KEY,
    Service_Name VARCHAR(50) NOT NULL,
    Walk_Duration INT NOT NULL,
    Service_Rate DECIMAL(6,2) NOT NULL
);
CREATE TABLE IF NOT EXISTS Dogs (
    Dog_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Dog_Name VARCHAR(50) NOT NULL,
    Age INT,
    Breed VARCHAR(50),
    Special_Instructions TEXT,

    FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID)
);
CREATE TABLE IF NOT EXISTS Appointment (
    Appointment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Service_ID INT NOT NULL,
    Appointment_Date DATE NOT NULL,
    Start_Time TIME NOT NULL,
    Requests TEXT,

    FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID),

    FOREIGN KEY (Service_ID)
        REFERENCES Service(Service_ID)
);
CREATE TABLE IF NOT EXISTS Appointment_Dog (
    Appointment_ID INT NOT NULL,
    Dog_ID INT NOT NULL,

    PRIMARY KEY (Appointment_ID, Dog_ID),

    FOREIGN KEY (Appointment_ID)
        REFERENCES Appointment(Appointment_ID),

    FOREIGN KEY (Dog_ID)
        REFERENCES Dogs(Dog_ID)
);
CREATE TABLE IF NOT EXISTS Payment (
    Payment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Appointment_ID INT NOT NULL UNIQUE,
    Payment_Status VARCHAR(20) NOT NULL,
    Payment_Method VARCHAR(30),
    Payment_Date DATE,

    FOREIGN KEY (Appointment_ID)
        REFERENCES Appointment(Appointment_ID)
);

SHOW TABLES;



