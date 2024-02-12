-- Drop the table if it exists
DROP TABLE IF EXISTS patient_insurance_provider;
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS lab_tests;
DROP TABLE IF EXISTS prescription;
DROP TABLE IF EXISTS appointments;
DROP TABLE IF EXISTS patient;
DROP TABLE IF EXISTS bed;
DROP TABLE IF EXISTS physician;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS lab;
DROP TABLE IF EXISTS clerk;
DROP TABLE IF EXISTS insurance_provider;
DROP TABLE IF EXISTS cost_centers;
DROP TABLE IF EXISTS speciality;
DROP TABLE IF EXISTS user_type;

-- Drop the Database if exists
DROP DATABASE IF EXISTS lakeridge;

-- Creating the Database
CREATE DATABASE lakeridge;

USE lakeridge; -- Using the database 

-- Creating the table user_type
CREATE TABLE user_type 
(
    user_type_code VARCHAR(10) PRIMARY KEY,
    user_type VARCHAR(50) NOT NULL,
    user_type_desc VARCHAR(120)
);

-- Creating the Speciality table
CREATE TABLE speciality
(
    speciality_id INT PRIMARY KEY IDENTITY(1,1),
    speciality_type VARCHAR(200),
    speciality_desc VARCHAR(1024)
);

-- Creating the cost_centers table
CREATE TABLE cost_centers
(
    cost_center_id INT PRIMARY KEY IDENTITY(1,1),
    cost_center_name VARCHAR(100) NOT NULL,
    cost_center_desc VARCHAR(1024)
);

-- Creating the insurance_provider table
CREATE TABLE insurance_provider
(
    insurance_provider_id INT PRIMARY KEY IDENTITY(1,1),
    provider_name VARCHAR(100) NOT NULL,
    provider_address VARCHAR(400) NOT NULL,
    provider_telephone VARCHAR(20)
);

-- Creating the clerk table
CREATE TABLE clerk
(
    clerk_id INT PRIMARY KEY IDENTITY(1,1),
    clerk_first_name VARCHAR(100),
    clerk_last_name VARCHAR(100),
    clerk_phone VARCHAR(20) NOT NULL,
    user_type_code VARCHAR(10),
    FOREIGN KEY (user_type_code) REFERENCES user_type(user_type_code)
);

-- Creating the lab table
CREATE TABLE lab
(
    lab_room_num INT PRIMARY KEY,
    lab_vacancy VARCHAR(350)
);

-- Creating the items table
CREATE TABLE items
(
    item_code INT PRIMARY KEY,
    item_name VARCHAR(500) NOT NULL, 
    cost_center_id INT,
    item_price FLOAT NOT NULL,
    item_desc VARCHAR(500) NOT NULL,
    FOREIGN KEY (cost_center_id) REFERENCES cost_centers(cost_center_id)
);

-- Creating the physician table
CREATE TABLE physician 
(
    physician_id INT PRIMARY KEY IDENTITY(1,1),
    physician_first_name VARCHAR(100) NOT NULL,
    physician_last_name VARCHAR(100) NOT NULL,
    physician_telephone VARCHAR(20) NOT NULL,
    speciality_id INT,
    user_type_code VARCHAR(10),
    FOREIGN KEY (speciality_id) REFERENCES speciality(speciality_id),
    FOREIGN KEY (user_type_code) REFERENCES user_type(user_type_code)
);

-- Creating the bed table
CREATE TABLE bed
(
    room_num CHAR(10),
    bed_letter CHAR(10),
	bed_type VARCHAR(10),
	bed_vacancy BIT,
    PRIMARY KEY (room_num, bed_letter)
);

-- Creating the patient table
CREATE TABLE patient
(
    patient_no INT PRIMARY KEY IDENTITY(1,1),
    patient_first_name VARCHAR(100) NOT NULL,
    patient_last_name VARCHAR(100) NOT NULL,
    patient_address VARCHAR(200) NOT NULL,
    patient_sex VARCHAR(20) NOT NULL,
    patient_hcn INT NOT NULL,
    physician_id INT,
    patient_extension INT NOT NULL,
    date_admitted DATETIME NOT NULL,
    discharge DATETIME,
    room_num CHAR(10),
    bed_letter CHAR(10),
    patient_notes VARCHAR(1024),
    clerk_id INT,
    FOREIGN KEY (physician_id) REFERENCES physician(physician_id),
    FOREIGN KEY (room_num, bed_letter) REFERENCES bed(room_num, bed_letter),
    FOREIGN KEY (clerk_id) REFERENCES clerk(clerk_id),
);

-- Creating the appointments table
CREATE TABLE appointments
(
    appointment_id INT PRIMARY KEY IDENTITY(1,1),
    clerk_id INT,
    appointment_date DATETIME NOT NULL,
    appointment_notes VARCHAR(1024),
	patient_no INT,
    FOREIGN KEY (clerk_id) REFERENCES clerk(clerk_id),
    FOREIGN KEY (patient_no) REFERENCES patient(patient_no)
);

-- Creating the prescription table
CREATE TABLE prescription
(
    prescription_id INT PRIMARY KEY IDENTITY(1,1),
    patient_no INT,
    physician_id INT,
    prescription_type VARCHAR(500) NOT NULL,
    prescription_notes VARCHAR(1024) NOT NULL,
    prescription_date DATETIME NOT NULL,
    appointment_id INT,
    FOREIGN KEY (physician_id) REFERENCES physician(physician_id),
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);

-- Creating the lab_tests table
CREATE TABLE lab_tests
(
    lab_test_id INT PRIMARY KEY IDENTITY(1,1),
    patient_no INT,
    physician_id INT,
    lab_room_num INT,
    test_date DATETIME NOT NULL,
    lab_test_notes VARCHAR(1024),
    result VARCHAR(200) NOT NULL,
    FOREIGN KEY (patient_no) REFERENCES patient(patient_no),
    FOREIGN KEY (physician_id) REFERENCES physician(physician_id),
    FOREIGN KEY (lab_room_num) REFERENCES lab(lab_room_num)
);

-- Creating the patient_insurance_provider table
CREATE TABLE patient_insurance_provider
(
    insurance_provider_id INT,
    patient_no INT,
    PRIMARY KEY (insurance_provider_id, patient_no),
    FOREIGN KEY (insurance_provider_id) REFERENCES insurance_provider(insurance_provider_id),
    FOREIGN KEY (patient_no) REFERENCES patient(patient_no)
);

-- Creating the transactions table
CREATE TABLE transactions
(
    transaction_id INT PRIMARY KEY IDENTITY(1,1),
    patient_no INT,
    item_code INT,
    transaction_date DATETIME NOT NULL,
    transaction_total_cost FLOAT NOT NULL,
    insurance_provider_id INT,
    FOREIGN KEY (patient_no) REFERENCES patient(patient_no),
    FOREIGN KEY (item_code) REFERENCES items(item_code),
    FOREIGN KEY (insurance_provider_id) REFERENCES insurance_provider(insurance_provider_id)
);
