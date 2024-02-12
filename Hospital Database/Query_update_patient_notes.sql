-- Query to change the note of a patient
-- Replace the placeholders with actual values
DECLARE @patient_no INT = 6;  -- Patient number to update
DECLARE @new_notes VARCHAR(1024) = 'This patient has a new disease.';

-- Update the patient notes
UPDATE patient
SET patient_notes = @new_notes
WHERE patient_no = @patient_no;

-- Display new updated patient
SELECT *
FROM patient
WHERE patient_no = @patient_no;