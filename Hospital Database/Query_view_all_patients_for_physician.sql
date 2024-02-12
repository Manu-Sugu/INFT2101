-- Query to view all patients for that physician
-- Change physician_id to the physician who wishes to see their patients
DECLARE @physician_id INT;
SET @physician_id = 1;

-- View all patients of the physician currently in the hospital discharge is null because we are looking for patients currently in the hospital
SELECT *
FROM patient
WHERE physician_id = @physician_id
  AND discharge IS NULL; 