
CREATE PROCEDURE InsertPositionSkill(
    IN p_PositionId INT,
    IN p_SkillId VARCHAR(10)
)
BEGIN

    IF NOT EXISTS (
        SELECT * FROM `Position_Skill`
        WHERE `position_id` = p_PositionId AND `skill_id` = p_SkillId
    ) THEN
        INSERT INTO `Position_Skill` (`position_id`, `skill_id`)
        VALUES (p_PositionId, p_SkillId);
    ELSE
        -- If Position Id and Skill Id combination already exists, handle accordingly
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate entry: Position Id and Skill Id combination already exists';
    END IF;
END 
