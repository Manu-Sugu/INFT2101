-- Query to view total number of appointments per patient
-- Change the patient number based on which patient you want to see
DECLARE @patient_no INT;
SET @patient_no = 1;

SELECT
    p.patient_no,
    p.patient_first_name,
    p.patient_last_name,
    COUNT(a.appointment_id) AS total_appointments
FROM
    patient p
LEFT JOIN
    appointments a ON p.patient_no = a.patient_no
WHERE
    p.patient_no = @patient_no
GROUP BY
    p.patient_no, p.patient_first_name, p.patient_last_name;