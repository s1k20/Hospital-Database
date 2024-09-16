CREATE PROCEDURE `GetHospitalName` (
    IN p_HospitalName VARCHAR(45)
)
BEGIN
   
    SELECT *
    FROM `Hospital Details`
    WHERE `Hospital Name` = p_HospitalName;
END