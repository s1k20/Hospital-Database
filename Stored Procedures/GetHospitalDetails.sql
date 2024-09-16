CREATE PROCEDURE GetHospitalDetails(
    IN p_HospitalIdentifier INT
)
BEGIN
    SELECT *
    FROM `Hospital Details`
    WHERE `Hospital Identifier` = p_HospitalIdentifier;
END 


