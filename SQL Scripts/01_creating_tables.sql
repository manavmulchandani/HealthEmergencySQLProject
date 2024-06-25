
DROP DATABASE EmergencyManagement;

-- Creating EmergencyManagement database
CREATE DATABASE EmergencyManagement;
USE EmergencyManagement;

-- Creating EMERGENCY table to store emergencies
CREATE TABLE EMERGENCY (
    emergency_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    description TEXT,
    start_date DATETIME,
    end_date DATETIME,
    location VARCHAR(200),
    severity VARCHAR(20)
);

-- Creating ORGANISATIONS table to store organisations
CREATE TABLE ORGANISATIONS (
    organisation_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(300),
    scale VARCHAR(30),
    type VARCHAR(30)
);

-- Creating EMERGENCY_SUPPORT table to store emergencies and organisations supporting in an emergency
CREATE TABLE EMERGENCY_SUPPORT (
    emergencysupport_id INT AUTO_INCREMENT PRIMARY KEY,
    emergency_id INT,
    organisation_id INT,
    FOREIGN KEY (emergency_id) REFERENCES EMERGENCY(emergency_id),
    FOREIGN KEY (organisation_id) REFERENCES ORGANISATIONS(organisation_id)
);

-- Creating RESPONSE_TEAM table to store teams sent during an emergency
CREATE TABLE RESPONSE_TEAM (
    response_id INT AUTO_INCREMENT PRIMARY KEY,
    emergency_id INT,
    department VARCHAR(100),
    lead_name VARCHAR(100),
    mobile BIGINT,
    email VARCHAR(100),
    member_count INT,
    location VARCHAR(200),
    FOREIGN KEY (emergency_id) REFERENCES EMERGENCY(emergency_id)
);

-- Creating DONATION table to keep track of donations
CREATE TABLE DONATION (
    donation_id INT AUTO_INCREMENT PRIMARY KEY,
    emergency_id INT,
    donor_name VARCHAR(100),
    date DATETIME,
    amount DECIMAL(18,2),
    currency VARCHAR(10),
    donor_type VARCHAR(30),
    FOREIGN KEY (emergency_id) REFERENCES EMERGENCY(emergency_id)
);

-- Creating EMERGENCY_AREA table to store areas where emergency occur
CREATE TABLE EMERGENCY_AREA (
    area_id INT AUTO_INCREMENT PRIMARY KEY,
    emergency_id INT,
    location VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    FOREIGN KEY (emergency_id) REFERENCES EMERGENCY(emergency_id)
);

-- Creating REPORTER table to keep track of personnel writing the report
CREATE TABLE REPORTER (
    reporter_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    mobile BIGINT,
    company VARCHAR(100)
);

-- Creating INCIDENT_REPORT table to keep track of reports created
CREATE TABLE INCIDENT_REPORT (
    report_id INT AUTO_INCREMENT PRIMARY KEY,
    area_id INT,
    reporter_id INT,
    title VARCHAR(100),
    date DATETIME,
    location VARCHAR(50),
    body TEXT,
    FOREIGN KEY (area_id) REFERENCES EMERGENCY_AREA(area_id),
    FOREIGN KEY (reporter_id) REFERENCES REPORTER(reporter_id)
);

