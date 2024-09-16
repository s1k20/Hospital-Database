

CREATE PROCEDURE InsertSkill(
    IN p_SkillId VARCHAR(10),
    IN p_SkillName VARCHAR(45)
)
BEGIN
    -- Check if the Skill Id already exists
    IF NOT EXISTS (
        SELECT * FROM `Skills Details`
        WHERE `skill_id` = p_SkillId
    ) THEN
        -- If Skill Id does not exist, insert the new record
        INSERT INTO `Skills Details` (`skill_id`, `skill_name`)
        VALUES (p_SkillId, p_SkillName);
    ELSE
        -- If Skill Id already exists, handle accordingly
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate entry: Skill Id already exists';
    END IF;
END 
