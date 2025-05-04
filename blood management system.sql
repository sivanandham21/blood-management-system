create database blood_management_system;
CREATE TABLE Blood (
    Blood_ID INT PRIMARY KEY,
    Blood_Type VARCHAR(5) NOT NULL -- e.g., A+, O-, etc.
);

CREATE TABLE Donor (
    Donor_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Gender VARCHAR(10),
    Blood_ID INT,
    Phone VARCHAR(15),
    Address VARCHAR(255),
    FOREIGN KEY (Blood_ID) REFERENCES Blood(Blood_ID)
);

CREATE TABLE Patient (
    Patient_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Gender VARCHAR(10),
    Blood_ID INT,
    Phone VARCHAR(15),
    Hospital_Name VARCHAR(100),
    FOREIGN KEY (Blood_ID) REFERENCES Blood(Blood_ID)
);


CREATE TABLE Blood_Bank (
    Bank_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100),
    Contact VARCHAR(15)
);

CREATE TABLE Donation (
    Donation_ID INT PRIMARY KEY,
    Donor_ID INT,
    Bank_ID INT,
    Date DATE,
    Quantity INT,
    FOREIGN KEY (Donor_ID) REFERENCES Donor(Donor_ID),
    FOREIGN KEY (Bank_ID) REFERENCES Blood_Bank(Bank_ID)
);


CREATE TABLE Blood_Request (
    Request_ID INT PRIMARY KEY,
    Patient_ID INT,
    Stock_ID INT, -- Refers to the Bank_ID from Blood_Bank
    Date DATE,
    Quantity INT,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Stock_ID) REFERENCES Blood_Bank(Bank_ID)
);


INSERT INTO Blood (Blood_ID, Blood_Type) VALUES
(1, 'A+'), (2, 'A-'), (3, 'B+'), (4, 'B-'),
(5, 'AB+'), (6, 'AB-'), (7, 'O+'), (8, 'O-');



INSERT INTO Donor (Donor_ID, Name, Age, Gender, Blood_ID, Phone, Address) VALUES
(1, 'Donor1', 25, 'Male', 7, '9876510001', 'Address 1'),
(2, 'Donor2', 60, 'Male', 1, '9876510002', 'Address 2'),
(3, 'Donor3', 47, 'Male', 6, '9876510003', 'Address 3'),
(4, 'Donor4', 28, 'Male', 6, '9876510004', 'Address 4'),
(5, 'Donor5', 57, 'Male', 1, '9876510005', 'Address 5'),
(6, 'Donor6', 49, 'Female', 7, '9876510006', 'Address 6'),
(7, 'Donor7', 42, 'Male', 2, '9876510007', 'Address 7'),
(8, 'Donor8', 58, 'Female', 2, '9876510008', 'Address 8'),
(9, 'Donor9', 46, 'Female', 5, '9876510009', 'Address 9'),
(10, 'Donor10', 29, 'Female', 3, '9876510010', 'Address 10'),
(11, 'Donor11', 48, 'Male', 3, '9876510011', 'Address 11'),
(12, 'Donor12', 41, 'Male', 1, '9876510012', 'Address 12'),
(13, 'Donor13', 38, 'Female', 5, '9876510013', 'Address 13'),
(14, 'Donor14', 42, 'Female', 3, '9876510014', 'Address 14'),
(15, 'Donor15', 43, 'Female', 3, '9876510015', 'Address 15'),
(16, 'Donor16', 57, 'Male', 6, '9876510016', 'Address 16'),
(17, 'Donor17', 55, 'Female', 1, '9876510017', 'Address 17'),
(18, 'Donor18', 41, 'Female', 1, '9876510018', 'Address 18'),
(19, 'Donor19', 28, 'Female', 5, '9876510019', 'Address 19'),
(20, 'Donor20', 31, 'Female', 2, '9876510020', 'Address 20'),
(21, 'Donor21', 41, 'Male', 5, '9876510021', 'Address 21'),
(22, 'Donor22', 27, 'Female', 7, '9876510022', 'Address 22'),
(23, 'Donor23', 43, 'Male', 2, '9876510023', 'Address 23'),
(24, 'Donor24', 34, 'Male', 5, '9876510024', 'Address 24'),
(25, 'Donor25', 54, 'Male', 7, '9876510025', 'Address 25'),
(26, 'Donor26', 55, 'Male', 4, '9876510026', 'Address 26'),
(27, 'Donor27', 24, 'Female', 1, '9876510027', 'Address 27'),
(28, 'Donor28', 30, 'Female', 7, '9876510028', 'Address 28'),
(29, 'Donor29', 39, 'Female', 2, '9876510029', 'Address 29'),
(30, 'Donor30', 21, 'Female', 6, '9876510030', 'Address 30');


INSERT INTO Patient (Patient_ID, Name, Age, Gender, Blood_ID, Phone, Hospital_Name) VALUES
(1, 'Patient1', 44, 'Male', 8, '9123410001', 'Hospital 5'),
(2, 'Patient2', 39, 'Female', 8, '9123410002', 'Hospital 4'),
(3, 'Patient3', 30, 'Female', 5, '9123410003', 'Hospital 1'),
(4, 'Patient4', 86, 'Male', 2, '9123410004', 'Hospital 2'),
(5, 'Patient5', 17, 'Male', 2, '9123410005', 'Hospital 5'),
(6, 'Patient6', 7, 'Male', 4, '9123410006', 'Hospital 2'),
(7, 'Patient7', 73, 'Male', 3, '9123410007', 'Hospital 1'),
(8, 'Patient8', 18, 'Female', 3, '9123410008', 'Hospital 2'),
(9, 'Patient9', 78, 'Female', 1, '9123410009', 'Hospital 4'),
(10, 'Patient10', 25, 'Female', 2, '9123410010', 'Hospital 4'),
(11, 'Patient11', 62, 'Male', 5, '9123410011', 'Hospital 4'),
(12, 'Patient12', 60, 'Female', 2, '9123410012', 'Hospital 5'),
(13, 'Patient13', 14, 'Male', 5, '9123410013', 'Hospital 4'),
(14, 'Patient14', 45, 'Female', 2, '9123410014', 'Hospital 2'),
(15, 'Patient15', 75, 'Female', 5, '9123410015', 'Hospital 4'),
(16, 'Patient16', 58, 'Male', 1, '9123410016', 'Hospital 2'),
(17, 'Patient17', 86, 'Male', 4, '9123410017', 'Hospital 4'),
(18, 'Patient18', 59, 'Male', 2, '9123410018', 'Hospital 1'),
(19, 'Patient19', 48, 'Female', 5, '9123410019', 'Hospital 1'),
(20, 'Patient20', 28, 'Female', 2, '9123410020', 'Hospital 5'),
(21, 'Patient21', 41, 'Female', 3, '9123410021', 'Hospital 4'),
(22, 'Patient22', 12, 'Male', 1, '9123410022', 'Hospital 3'),
(23, 'Patient23', 83, 'Female', 7, '9123410023', 'Hospital 5'),
(24, 'Patient24', 67, 'Male', 7, '9123410024', 'Hospital 1'),
(25, 'Patient25', 5, 'Female', 6, '9123410025', 'Hospital 4'),
(26, 'Patient26', 17, 'Male', 2, '9123410026', 'Hospital 3'),
(27, 'Patient27', 34, 'Male', 8, '9123410027', 'Hospital 3'),
(28, 'Patient28', 43, 'Female', 4, '9123410028', 'Hospital 3'),
(29, 'Patient29', 62, 'Male', 4, '9123410029', 'Hospital 2'),
(30, 'Patient30', 35, 'Female', 8, '9123410030', 'Hospital 3');


INSERT INTO Blood_Bank (Bank_ID, Name, Location, Contact) VALUES
(1, 'Blood Bank 1', 'City 1', '900001001'),
(2, 'Blood Bank 2', 'City 2', '900001002'),
(3, 'Blood Bank 3', 'City 3', '900001003'),
(4, 'Blood Bank 4', 'City 4', '900001004'),
(5, 'Blood Bank 5', 'City 5', '900001005'),
(6, 'Blood Bank 6', 'City 6', '900001006'),
(7, 'Blood Bank 7', 'City 7', '900001007'),
(8, 'Blood Bank 8', 'City 8', '900001008'),
(9, 'Blood Bank 9', 'City 9', '900001009'),
(10, 'Blood Bank 10', 'City 10', '900001010');


INSERT INTO Donation (Donation_ID, Donor_ID, Bank_ID, Date, Quantity) VALUES
(1, 3, 9, '2024-07-16', 250),
(2, 1, 4, '2024-08-19', 500),
(3, 27, 7, '2024-10-15', 250),
(4, 17, 4, '2024-12-17', 500),
(5, 7, 4, '2024-01-07', 250),
(6, 28, 2, '2024-08-27', 250),
(7, 22, 6, '2024-07-08', 250),
(8, 13, 10, '2024-07-28', 250),
(9, 4, 1, '2024-10-11', 250),
(10, 16, 6, '2024-03-23', 250),
(11, 14, 10, '2024-06-12', 500),
(12, 12, 5, '2024-01-11', 250),
(13, 23, 10, '2024-11-23', 250),
(14, 25, 7, '2024-03-25', 500),
(15, 24, 8, '2024-08-01', 500),
(16, 5, 1, '2024-08-14', 500),
(17, 6, 1, '2024-02-22', 250),
(18, 20, 7, '2024-08-18', 250),
(19, 2, 10, '2024-02-06', 250),
(20, 9, 5, '2024-12-25', 500),
(21, 11, 6, '2024-09-15', 250),
(22, 15, 2, '2024-03-06', 250),
(23, 10, 1, '2024-02-17', 250),
(24, 21, 4, '2024-06-04', 500),
(25, 19, 3, '2024-10-30', 500),
(26, 30, 4, '2024-10-10', 250),
(27, 8, 2, '2024-11-26', 500),
(28, 18, 3, '2024-09-19', 250),
(29, 26, 5, '2024-03-11', 500),
(30, 29, 3, '2024-07-18', 500);



INSERT INTO Blood_Request (Request_ID, Patient_ID, Stock_ID, Date, Quantity) VALUES
(1, 4, 1, '2024-06-29', 250),
(2, 12, 6, '2024-08-26', 500),
(3, 30, 1, '2024-11-13', 250),
(4, 5, 10, '2024-12-03', 250),
(5, 28, 2, '2024-09-26', 500),
(6, 10, 1, '2024-01-03', 250),
(7, 25, 6, '2024-05-15', 250),
(8, 19, 4, '2024-04-15', 250),
(9, 14, 7, '2024-03-29', 500),
(10, 9, 6, '2024-02-05', 500),
(11, 20, 6, '2024-11-29', 250),
(12, 1, 1, '2024-06-09', 250),
(13, 22, 10, '2024-09-10', 250),
(14, 18, 10, '2024-09-23', 500),
(15, 3, 5, '2024-03-03', 250),
(16, 7, 5, '2024-04-01', 250),
(17, 15, 3, '2024-05-09', 250),
(18, 6, 2, '2024-10-09', 250),
(19, 27, 6, '2024-06-03', 500),
(20, 17, 10, '2024-07-06', 500),
(21, 11, 7, '2024-09-06', 250),
(22, 21, 6, '2024-04-06', 250),
(23, 2, 8, '2024-11-01', 500),
(24, 8, 10, '2024-01-19', 500),
(25, 26, 10, '2024-02-10', 250),
(26, 13, 3, '2024-04-22', 250),
(27, 29, 5, '2024-06-01', 250),
(28, 24, 4, '2024-12-19', 500),
(29, 16, 7, '2024-12-01', 500),
(30, 23, 8, '2024-11-09', 250);



DELIMITER //
CREATE PROCEDURE AddDonor (
    IN p_Name VARCHAR(100), IN p_Age INT, IN p_Gender VARCHAR(10),
    IN p_Contact VARCHAR(20), IN p_Address TEXT, IN p_BloodID INT
)
BEGIN
    INSERT INTO Donor (Name, Age, Gender, Contact, Address, Blood_ID)
    VALUES (p_Name, p_Age, p_Gender, p_Contact, p_Address, p_BloodID);
END //
DELIMITER ;

CALL AddDonor('Vishal Kumar', 35, 'Male', '9999988888', 'Chennai', 3);


DELIMITER //
CREATE PROCEDURE AddPatient (
    IN p_Name VARCHAR(100), IN p_Age INT, IN p_Gender VARCHAR(10),
    IN p_Contact VARCHAR(20), IN p_Address TEXT, IN p_BloodID INT
)
BEGIN
    INSERT INTO Patient (Name, Age, Gender, Contact, Address, Blood_ID)
    VALUES (p_Name, p_Age, p_Gender, p_Contact, p_Address, p_BloodID);
END //
DELIMITER ;

CALL AddPatient('Anita Sharma', 40, 'Female', '9888777666', 'Madurai', 2);


DELIMITER //
CREATE PROCEDURE GetDonorsByBloodType(IN bloodType VARCHAR(10))
BEGIN
    SELECT d.* FROM Donor d
    JOIN Blood b ON d.Blood_ID = b.Blood_ID
    WHERE b.Blood_Type = bloodType;
END //
DELIMITER ;

CALL GetDonorsByBloodType('O+');


DELIMITER //
CREATE PROCEDURE TotalDonationsByDonor(IN donorId INT)
BEGIN
    SELECT Donor_ID, SUM(Quantity) AS Total_Quantity
    FROM Donation
    WHERE Donor_ID = donorId
    GROUP BY Donor_ID;
END //
DELIMITER ;

CALL TotalDonationsByDonor(5);


DELIMITER //
CREATE PROCEDURE AddStock(IN bankID INT, IN bloodID INT, IN quantity INT, IN date DATE)
BEGIN
    INSERT INTO Stock (Bank_ID, Blood_ID, Quantity, Date_Added)
    VALUES (bankID, bloodID, quantity, date);
END //
DELIMITER ;

CALL AddStock(2, 1, 250, '2024-12-15');

DELIMITER //
CREATE PROCEDURE GetBloodAvailability(IN bloodType VARCHAR(10))
BEGIN
    SELECT bb.Name AS Bank, b.Blood_Type, SUM(s.Quantity) AS Total_Stock
    FROM Stock s
    JOIN Blood b ON s.Blood_ID = b.Blood_ID
    JOIN Blood_Bank bb ON s.Bank_ID = bb.Bank_ID
    WHERE b.Blood_Type = bloodType
    GROUP BY bb.Name, b.Blood_Type;
END //
DELIMITER ;

CALL GetBloodAvailability('A+');






DELIMITER //
CREATE PROCEDURE RequestBlood (
    IN patientID INT, IN stockID INT, IN reqDate DATE, IN qty INT
)
BEGIN
    INSERT INTO Blood_Request (Patient_ID, Stock_ID, Date, Quantity)
    VALUES (patientID, stockID, reqDate, qty);
END //
DELIMITER ;

CALL RequestBlood(12, 3, '2024-12-25', 250);


CREATE VIEW PatientInfo AS
SELECT p.Patient_ID, p.Name, p.Age, p.Gender, p.Contact, b.Blood_Type
FROM Patient p
JOIN Blood b ON p.Blood_ID = b.Blood_ID;

SELECT * FROM PatientInfo;


CREATE VIEW DonationSummary AS
SELECT d.Donor_ID, SUM(d.Quantity) AS Total_Quantity
FROM Donation d
GROUP BY d.Donor_ID;

SELECT * FROM DonationSummary;


CREATE VIEW StockByBloodType AS
SELECT b.Blood_Type, SUM(s.Quantity) AS Total_Quantity
FROM Stock s
JOIN Blood b ON s.Blood_ID = b.Blood_ID
GROUP BY b.Blood_Type;

SELECT * FROM StockByBloodType;


CREATE VIEW BankStock AS
SELECT bb.Name AS Bank, b.Blood_Type, SUM(s.Quantity) AS Quantity
FROM Stock s
JOIN Blood b ON s.Blood_ID = b.Blood_ID
JOIN Blood_Bank bb ON s.Bank_ID = bb.Bank_ID
GROUP BY bb.Name, b.Blood_Type;

SELECT * FROM BankStock;



CREATE VIEW RequestDetails AS
SELECT r.Request_ID, p.Name AS Patient, b.Blood_Type, r.Date, r.Quantity
FROM Blood_Request r
JOIN Patient p ON r.Patient_ID = p.Patient_ID
JOIN Stock s ON r.Stock_ID = s.Stock_ID
JOIN Blood b ON s.Blood_ID = b.Blood_ID;

SELECT * FROM RequestDetails;


CREATE VIEW BankContacts AS
SELECT Name, Location, Contact
FROM Blood_Bank;

SELECT * FROM BankContacts;


CREATE VIEW DonationDetails AS
SELECT d.Donation_ID, dn.Name AS Donor, bb.Name AS Bank, d.Date, d.Quantity
FROM Donation d
JOIN Donor dn ON d.Donor_ID = dn.Donor_ID
JOIN Blood_Bank bb ON d.Bank_ID = bb.Bank_ID;

SELECT * FROM DonationDetails;









