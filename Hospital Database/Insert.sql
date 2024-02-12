-- To make sure the lakeridge database is being used
USE lakeridge;

-- Inserts for user_type table
INSERT INTO user_type (user_type_code, user_type, user_type_desc) VALUES 
('CL', 'Clerk', 'Responsible for administrative tasks'),
('PH', 'Physician', 'Medical professional providing healthcare services'),
('AD', 'Admin', 'Administrative user with special privileges');

-- Inserts for speciality table
INSERT INTO speciality (speciality_type, speciality_desc) VALUES 
('Cardiology', 'Specializing in heart-related issues'),
('Orthopedics', 'Specializing in musculoskeletal issues'),
('Dermatology', 'Specializing in skin conditions'),
('Neurology', 'Specializing in disorders of the nervous system'),
('Ophthalmology', 'Specializing in eye care');

-- Inserts for cost_centers table
INSERT INTO cost_centers(cost_center_name, cost_center_desc)
VALUES
    ('Emergency Department', 'Handles urgent medical cases 24/7'),
    ('Cardiology Department', 'Specialized in heart-related conditions'),
    ('Surgery Department', 'Performs various surgical procedures'),
    ('Laboratory', 'Conducts diagnostic tests and experiments'),
    ('Radiology Department', 'Imaging and diagnostic services'),
    ('Pediatrics Department', 'Specialized care for children'),
    ('Orthopedics Department', 'Deals with musculoskeletal issues'),
    ('Obstetrics and Gynecology', 'Womens health and pregnancy care'),
    ('Neurology Department', 'Focuses on nervous system disorders'),
    ('Ophthalmology Department', 'Specialized in eye care'),
    ('Dental Clinic', 'Provides dental services'),
    ('Psychiatry Department', 'Mental health and behavioral disorders'),
    ('Physical Therapy', 'Rehabilitation and movement disorders'),
    ('Nutrition Services', 'Offers dietary and nutrition advice'),
    ('Pharmacy', 'Dispenses medications and pharmaceuticals');


-- Inserts for insurance_provider table
INSERT INTO insurance_provider (provider_name, provider_address, provider_telephone) VALUES 
('Maple Insurance', '123 Main Street, Toronto, Canada', '1234567890'),
('GreatNorth Assurance', '456 Oak Avenue, Toronto, Canada', '9876543210'),
('EhShield Healthcare', '789 Pine Road, Toronto, Canada', '5551234567'),
('TrueNorth Health Plans', '321 Cedar Lane, Toronto, Canada', '8889876543'),
('Polaris Coverage', '654 Elm Street, Toronto, Canada', '2224567890');

-- Inserts for clerk table
INSERT INTO clerk (clerk_first_name, clerk_last_name, clerk_phone, user_type_code) VALUES 
('John', 'Smith', '1234567890', 'CL'),
('Emily', 'Jones', '9876543210', 'CL'),
('Daniel', 'Wong', '5551234567', 'CL'),
('Jennifer', 'Chen', '8889876543', 'CL'),
('Michael', 'Taylor', '2224567890', 'CL');

-- Inserts for items table
INSERT INTO items
VALUES
    (101, 'Stethoscope', 1, 50.00, 'Medical instrument for listening to internal sounds'),
    (102, 'Blood Pressure Monitor', 2, 120.00, 'Device for measuring blood pressure'),
    (103, 'Surgical Gloves', 3, 5.00, 'Disposable gloves for surgical procedures'),
    (104, 'X-Ray Machine', 4, 150000.00, 'Diagnostic imaging equipment'),
    (105, 'MRI Scanner', 5, 300000.00, 'Magnetic Resonance Imaging device'),
    (106, 'Pediatric Ventilator', 6, 1500.00, 'Assists breathing in pediatric patients'),
    (107, 'Orthopedic Implants', 7, 2000.00, 'Implants for orthopedic surgeries'),
    (108, 'Prenatal Vitamins', 8, 15.00, 'Supplements for pregnant women'),
    (109, 'Neurology Consultation', 9, 200.00, 'Consultation with a neurologist'),
    (110, 'Eyeglasses', 10, 100.00, 'Prescription eyeglasses'),
    (111, 'Dental Cleaning Kit', 11, 20.00, 'Kit for dental hygiene'),
    (112, 'Antidepressant Medication', 12, 50.00, 'Medication for mental health'),
    (113, 'Physical Therapy Session', 13, 75.00, 'Individual physical therapy session'),
    (114, 'Dietary Supplements', 14, 25.00, 'Supplements for nutritional needs'),
    (115, 'Prescription Medications', 15, 10.00, 'Various prescription medications');

-- Inserts for lab table
INSERT INTO lab (lab_room_num, lab_vacancy) VALUES 
(101, 'Vacant'),
(102, 'Occupied'),
(103, 'Vacant');

-- Inserts for physician table
INSERT INTO physician (physician_first_name, physician_last_name, physician_telephone, speciality_id, user_type_code) VALUES 
('Dr. Manu', 'Sugunakumar', '1234567890', 1, 'PH'),
('Dr. Himanshu', 'Blank', '9876543210', 2, 'PH'),
('Dr. Neilavan', 'Vijayakanthan', '5551234567', 3, 'PH'),
('Dr. Addan', 'Zahra', '8889876543', 4, 'PH'),
('Dr. Jennifer', 'Short', '2224567890', 5, 'PH');

-- Inserts for bed table
INSERT INTO bed (room_num, bed_letter, bed_type, bed_vacancy) 
VALUES
(251, 'A', 'W4', 1),
(251, 'B', 'W4', 1),
(251, 'C', 'W4', 1),
(251, 'D', 'W4', 1),
(252, 'A', 'W4', 1),
(252, 'B', 'W4', 0),
(252, 'C', 'W4', 0),
(252, 'D', 'W4', 0),
(253, 'A', 'W4', 1),
(253, 'B', 'W4', 1),
(253, 'C', 'W4', 1),
(253, 'D', 'W4', 0),
(254, 'A', 'W4', 0),
(254, 'B', 'W4', 0),
(254, 'C', 'W4', 1),
(254, 'D', 'W4', 0),
(255, 'A', 'SP', 0),
(255, 'B', 'SP', 0),
(256, 'A', 'SP', 1),
(256, 'B', 'SP', 1),
(257, 'A', 'SP', 1),
(257, 'B', 'SP', 1),
(258, 'A', 'SP', 1),
(258, 'B', 'SP', 1),
(259, 'A', 'SP', 1),
(259, 'B', 'SP', 1),
(261, 'A', 'W3', 0),
(261, 'B', 'W3', 0),
(261, 'C', 'W3', 0),
(262, 'A', 'W3', 0),
(262, 'B', 'W3', 1),
(262, 'C', 'W3', 0),
(263, 'A', 'W3', 0),
(263, 'B', 'W3', 1),
(263, 'C', 'W3', 1),
(264, 'A', 'P', 0),
(265, 'A', 'P', 0),
(266, 'A', 'P', 0),
(267, 'A', 'P', 0),
(268, 'A', 'P', 0),
(269, 'A', 'P', 0),
(270, 'A', 'P', 0),
(271, 'A', 'IC', 1),
(271, 'B', 'IC', 1),
(271, 'C', 'IC', 1),
(271, 'D', 'IC', 1),
(272, 'A', 'IC', 1),
(272, 'B', 'IC', 1),
(272, 'C', 'IC', 0),
(272, 'D', 'IC', 0),
(273, 'A', 'IC', 0),
(273, 'B', 'IC', 0),
(273, 'C', 'IC', 0),
(273, 'D', 'IC', 0);

-- Inserts for patient table
INSERT INTO patient (patient_first_name, patient_last_name, patient_address, patient_sex, patient_hcn, physician_id, patient_extension, date_admitted, discharge, room_num, bed_letter, patient_notes, clerk_id)
VALUES
('John', 'Doe', '123 Main St', 'Male', 123456789, 1, 101, '2023-01-01', '2023-01-05', 251, 'A', 'Broken thumb.', 1),
('Jane', 'Smith', '456 Oak St', 'Female', 987654321, 2, 102, '2023-02-05', '2023-02-10', 251, 'B', 'Cough, body overheating.', 2),
('Michael', 'Johnson', '789 Elm St', 'Male', 555123456, 3, 103, '2023-03-10', '2023-03-15', 251, 'C', 'Broken leg.', 3),
('Emily', 'Williams', '101 Pine St', 'Female', 444567890, 4, 104, '2023-04-15', '2023-04-20', 251, 'D', 'Stitches Removal', 4),
('Daniel', 'Brown', '202 Cedar St', 'Male', 333678901, 5, 105, '2023-05-20', '2023-05-25', 252, 'A', 'Tongue stuck on pole.', 5),
('Alice', 'Johnson', '111 Pine St', 'Female', 111223344, 1, 111, '2023-06-01', NULL, 252, 'B', 'Recovering from car accident.', 1),
('Bob', 'Smith', '222 Oak St', 'Male', 222334455, 2, 222, '2023-06-02', NULL, 252, 'C', 'Recovering from car accident.', 2),
('Charlie', 'Williams', '333 Elm St', 'Male', 333445566, 3, 333, '2023-06-03', NULL, 252, 'D', 'Left foot sprained.', 3),
('David', 'Brown', '444 Cedar St', 'Male', 444556677, 4, 444, '2023-06-04', '2023-06-05', 253, 'A', 'Butt hurts.', 4),
('Eva', 'Taylor', '555 Maple St', 'Female', 555667788, 5, 555, '2023-06-05', '2023-06-05', 253, 'B', 'Head Hurts', 5),
('Frank', 'Miller', '666 Pine St', 'Male', 666778899, 1, 666, '2023-06-06', '2023-06-06', 253, 'C', 'Stuffy nose.', 1),
('Grace', 'Davis', '777 Oak St', 'Female', 777889900, 2, 777, '2023-06-07', NULL, 253, 'D', 'Broke his middle finger.', 2),
('Henry', 'White', '888 Elm St', 'Male', 888990011, 3, 888, '2023-06-08', NULL, 254, 'A', 'Broke his neck.', 3),
('Ivy', 'Harris', '999 Cedar St', 'Female', 999001122, 4, 999, '2023-06-09', NULL, 254, 'B', 'Cat scratched his face.', 4),
('Jack', 'Jones', '101 Maple St', 'Male', 101112233, 5, 101, '2023-06-10', '2023-06-10', 254, 'C', 'Dog bite on right leg.', 5),
('Kate', 'Anderson', '121 Pine St', 'Female', 121314151, 1, 121, '2023-06-11', NULL, 254, 'D', 'Broke his ribcage from fighting.', 1),
('Leo', 'Moore', '141 Oak St', 'Male', 141516171, 2, 141, '2023-06-12', NULL, 261, 'A', 'Throat infection.', 2),
('Mia', 'Thomas', '161 Elm St', 'Female', 161718192, 3, 161, '2023-06-13', NULL, 261, 'B', 'STD', 3),
('Noah', 'Lee', '181 Cedar St', 'Male', 181920212, 4, 181, '2023-06-14', NULL, 261, 'C', 'STD', 4),
('Olivia', 'Roberts', '201 Maple St', 'Female', 201212223, 5, 201, '2023-06-15', NULL, 262, 'A', 'Goneria', 5),
('Paul', 'Baker', '221 Pine St', 'Male', 221222233, 1, 221, '2023-06-16', '2023-06-16', 262, 'B', 'Head stuck in washing machine.', 1),
('Quinn', 'Clark', '241 Oak St', 'Female', 241252263, 2, 241, '2023-06-17', NULL, 262, 'C', 'Left eye not working.', 2),
('Ryan', 'Hill', '261 Elm St', 'Male', 261272283, 3, 261, '2023-06-18', NULL, 263, 'A', 'Can not feel his face.', 3),
('Sofia', 'Ward', '281 Cedar St', 'Female', 281292303, 4, 281, '2023-06-19', '2023-06-19', 263, 'B', 'Burned his righ hand on stove.', 4),
('Tyler', 'Cooper', '301 Maple St', 'Male', 301312323, 5, 301, '2023-06-20', '2023-06-20', 263, 'C', 'Burned his left hand on stove.', 5),
('Uma', 'Reed', '321 Pine St', 'Female', 321322333, 1, 321, '2023-06-21', NULL, 264, 'A', 'Left torso is injured.', 1),
('Victor', 'Morgan', '341 Oak St', 'Male', 341352363, 2, 341, '2023-06-22', NULL, 265, 'A', 'Getting tests done.', 2),
('Wendy', 'Hayes', '361 Elm St', 'Female', 361372383, 3, 361, '2023-06-23', NULL, 266, 'A', 'Staying at the hospital.', 3),
('Xander', 'Fisher', '381 Cedar St', 'Male', 381392403, 4, 381, '2023-06-24', NULL, 267, 'A', 'Rich guy trying to fake his death.', 4),
('Yara', 'Stewart', '401 Maple St', 'Female', 401412423, 5, 401, '2023-06-25', NULL, 268, 'A', 'REDACTED', 5);

-- Inserts for appointments table
INSERT INTO appointments (clerk_id, appointment_date, appointment_notes, patient_no)
VALUES
(1, '2023-01-05 10:00:00', 'Came in with a broken thumb.', 1),
(2, '2023-02-10 14:30:00', 'Came in with a cough.', 2),
(3, '2023-03-15 11:45:00', 'Came in with broken leg. Fixed.', 3),
(4, '2023-04-20 09:30:00', 'Removed stitches from previous incidient.', 4),
(5, '2023-05-25 13:15:00', 'Came in with their tongue stuck on a pole.', 5),
(1, '2023-06-01 11:00:00', 'Follow-up appointment for recovering from a car accident.', 6),
(2, '2023-06-02 14:30:00', 'Follow-up appointment for recovering from a car accident.', 7),
(3, '2023-06-03 10:45:00', 'Follow-up appointment for a left foot sprain.', 8),
(4, '2023-06-04 09:30:00', 'Follow-up appointment for a butt injury.', 9),
(5, '2023-06-05 13:45:00', 'Follow-up appointment for a head injury.', 10),
(1, '2023-06-06 15:00:00', 'Follow-up appointment for a stuffy nose.', 11),
(2, '2023-06-07 12:30:00', 'Follow-up appointment for a broken middle finger.', 12),
(3, '2023-06-08 14:45:00', 'Follow-up appointment for a broken neck.', 13),
(4, '2023-06-09 11:15:00', 'Follow-up appointment for a cat scratch on the face.', 14),
(5, '2023-06-10 13:30:00', 'Follow-up appointment for a dog bite on the right leg.', 15),
(1, '2023-06-11 10:00:00', 'Follow-up appointment for a broken ribcage.', 16),
(2, '2023-06-12 14:15:00', 'Follow-up appointment for a throat infection.', 17),
(3, '2023-06-13 13:45:00', 'Follow-up appointment for STD treatment.', 18),
(4, '2023-06-14 11:30:00', 'Follow-up appointment for STD treatment.', 19),
(5, '2023-06-15 16:00:00', 'Follow-up appointment for STD treatment.', 20),
(1, '2023-06-16 09:45:00', 'Follow-up appointment for a head stuck in the washing machine.', 21),
(2, '2023-06-17 12:00:00', 'Follow-up appointment for a left eye not working.', 22),
(3, '2023-06-18 15:30:00', 'Follow-up appointment for not feeling the face.', 23),
(4, '2023-06-19 14:15:00', 'Follow-up appointment for a burned right hand.', 24),
(5, '2023-06-20 11:00:00', 'Follow-up appointment for a burned left hand.', 25),
(1, '2023-06-21 12:45:00', 'Follow-up appointment for a left torso injury.', 26),
(2, '2023-06-22 14:30:00', 'Getting tests done.', 27),
(3, '2023-06-23 16:00:00', 'Staying at the hospital.', 28),
(4, '2023-06-24 11:30:00', 'Rich guy trying to fake his death.', 29),
(5, '2023-06-25 13:15:00', 'REDACTED', 30);

-- Inserts for prescription table
INSERT INTO prescription (patient_no, physician_id, prescription_type, prescription_notes, prescription_date, appointment_id)
VALUES
(1, 1, 'Pain Medication', 'Pain medication', '2023-01-05 10:30:00', 1),
(2, 2, 'Cough Syrup', 'Cough Syrup', '2023-02-10 15:00:00', 2),
(3, 3, 'Pain medication & healing cream', 'Pain medication & healling cream.', '2023-03-15 12:15:00', 3),
(4, 4, 'Healing Cream', 'Healing cream', '2023-04-20 10:00:00', 4),
(5, 5, 'Heat Pills', 'Heat pills', '2023-05-25 13:45:00', 5);

-- Inserts for lab_tests table
INSERT INTO lab_tests (patient_no, physician_id, lab_room_num, test_date, lab_test_notes, result)
VALUES
(1, 1, 101, '2023-01-07 11:00:00', 'Tests came back normal', 'Normal'),
(2, 2, 102, '2023-02-12 14:45:00', 'Tests showed just common cold.', 'Normal'),
(3, 3, 103, '2023-03-17 12:30:00', 'Showed infection on scar.', 'Abnormal'),
(4, 4, 102, '2023-04-22 09:45:00', 'Leg shows no infection.', 'Normal'),
(5, 5, 101, '2023-05-27 13:30:00', 'Tongue shows bruising and infection', 'Abnormal');

-- Inserts for transactions table
INSERT INTO transactions (patient_no, item_code, transaction_date, transaction_total_cost, insurance_provider_id)
VALUES
(1, 101, '2023-01-10 13:30:00', 50.00, 1),
(2, 102, '2023-02-15 16:15:00', 20.99, 2),
(3, 103, '2023-03-20 14:00:00', 10.50, 3),
(4, 104, '2023-04-25 11:30:00', 40.75, 4),
(5, 105, '2023-05-30 15:45:00', 75.00, 5);

INSERT INTO patient_insurance_provider (insurance_provider_id, patient_no)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
