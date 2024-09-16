CREATE PROCEDURE InsertPosition(
    IN p_PositionId INT,
    IN p_TypeOfPos VARCHAR(45),
    IN p_HospitalHiring INT
)
BEGIN
    IF NOT EXISTS (
        SELECT * FROM `Position Details`
        WHERE `position_id` = p_PositionId AND `hospital_hiring` = p_HospitalHiring
    ) THEN
        INSERT INTO `Position Details` (`position_id`, `type_of_pos`, `hospital_hiring`)
        VALUES (p_PositionId, p_TypeOfPos, p_HospitalHiring);
    ELSE
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate entry: Position Id and Hospital Hiring combination already exists';
    END IF;
END 

