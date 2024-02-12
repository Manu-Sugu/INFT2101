-- Query to view specific patient data
-- Type the patient no you wish to see patient information for
DECLARE @patient_no INT = 1;

SELECT
    patient_no,
    patient_first_name,
    patient_last_name,
    patient_address,
    patient_sex,
    patient_hcn,
    physician_id,
    patient_extension,
    date_admitted,
    discharge,
    room_num,
    bed_letter,
    patient_notes,
    clerk_id
FROM
    patient
WHERE
    patient_no = @patient_no;