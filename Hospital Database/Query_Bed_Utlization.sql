-- Discharge Date
DECLARE @dischargeDate DATE = '2023-12-06';

 

SELECT COUNT(*) AS discharging_beds_today
FROM bed b
JOIN patient p ON b.room_num = p.room_num AND b.bed_letter = p.bed_letter
WHERE CONVERT(DATE, p.discharge) = @dischargeDate;

 

-- Occupancy by room type
SELECT cost_center_name, COUNT(*) AS empty_rooms_count
FROM bed b
RIGHT JOIN cost_centers c ON b.room_num = c.cost_center_id
WHERE b.bed_vacancy = 1 OR b.bed_vacancy IS NULL
GROUP BY cost_center_name;

 

-- Bed Vacancies
SELECT COUNT(*) AS occupied_beds
FROM bed
WHERE bed_vacancy = 0;

 

-- Occupancy by rooms
SELECT room_num, COUNT(*) AS occupancy_count
FROM bed
WHERE bed_vacancy = 0
GROUP BY room_num;

 

-- Empty Rooms by Room Type
SELECT c.cost_center_name, COUNT(*) AS empty_rooms_count
FROM cost_centers c
LEFT JOIN bed b ON c.cost_center_id = b.room_num
               AND b.bed_vacancy = 1
GROUP BY c.cost_center_name;
