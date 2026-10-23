DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

CREATE TABLE Dogs (
    DogID INT PRIMARY KEY,
    CustomerID INT,
    DogName VARCHAR(50),
    Breed VARCHAR(50),
    Size VARCHAR(20),
    Age INT,
    SpecialRequests VARCHAR(255),
    MedicalNotes VARCHAR(255),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Walks (
    WalkID INT PRIMARY KEY,
    CustomerID INT,
    WalkDate DATE,
    StartTime TIME,
    Duration INT,
    Rate DECIMAL(6,2),
    Completed BOOLEAN,
    Notes VARCHAR(255),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    CustomerID INT,
    PaymentDate DATE,
    Amount DECIMAL(8,2),
    Method VARCHAR(30),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Walk_Dogs (
    WalkID INT,
    DogID INT,
    PRIMARY KEY (WalkID, DogID),
    FOREIGN KEY (WalkID) REFERENCES Walks(WalkID),
    FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
);