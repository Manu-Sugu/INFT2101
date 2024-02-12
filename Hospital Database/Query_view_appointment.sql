-- Query to view past and future appointments for a patient
-- Set to the patient id you wish to see their appointment for
DECLARE @patient_no INT = 1;

-- Retrieve previous appointments
SELECT
    appointment_id,
    appointment_date,
    appointment_notes
FROM
    appointments
WHERE
    patient_no = @patient_no
    AND appointment_date < GETDATE()
ORDER BY
    appointment_date DESC;

-- Retrieve upcoming appointments
SELECT
    appointment_id,
    appointment_date,
    appointment_notes
FROM
    appointments
WHERE
    patient_no = @patient_no
    AND appointment_date >= GETDATE()
ORDER BY
    appointment_date ASC;