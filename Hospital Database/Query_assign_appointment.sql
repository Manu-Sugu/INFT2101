-- Query to assign new appointment to patients
-- Replace id's with the id of the clerk who is assignning the appointment and the patient no
DECLARE @clerk_id INT = 1;  -- Clerk assigning the appointment
DECLARE @patient_no INT = 6;  -- Patient for whom the appointment is assigned
DECLARE @appointment_date DATETIME = '2023-07-01 14:00:00';  -- Desired appointment date and time
DECLARE @appointment_notes VARCHAR(1024) = 'Follow-up appointment';

-- Insert the new appointment
INSERT INTO appointments (clerk_id, appointment_date, appointment_notes, patient_no)
VALUES (@clerk_id, @appointment_date, @appointment_notes, @patient_no);

-- Optional: Display the newly assigned appointment
SELECT * FROM appointments
WHERE appointment_id = SCOPE_IDENTITY();