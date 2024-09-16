
CREATE PROCEDURE InsertHospital(
    IN p_HospitalIdentifier INT,
    IN p_HospitalName VARCHAR(45),
    IN p_Address VARCHAR(100),
    IN p_TelephoneNumber VARCHAR(20),
    IN p_InterviewPosition VARCHAR(45)
)
BEGIN
    IF NOT EXISTS (SELECT * FROM `Hospital Details` WHERE `Hospital Identifier` = p_HospitalIdentifier) THEN
        INSERT INTO `Hospital Details` (`Hospital Identifier`, `Hospital Name`, `Address`, `Telephone Number`, `interview_position`)
        VALUES (p_HospitalIdentifier, p_HospitalName, p_Address, p_TelephoneNumber, p_InterviewPosition);
    ELSE
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate entry: Hospital Identifier already exists';
    END IF;
END 

