CREATE PROCEDURE InsertCandidateSkill(
    IN p_candidate_id INT,
    IN p_skill_id VARCHAR(10)
)
BEGIN
    -- Check if the candidate_id and skill_id already exist in the table
    IF NOT EXISTS (SELECT * FROM `Candidate_Skill` WHERE `candidate_id` = p_candidate_id AND `skill_id` = p_skill_id) THEN
        INSERT INTO `Candidate_Skill` (`candidate_id`, `skill_id`)
        VALUES (p_candidate_id, p_skill_id);
    ELSE
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate entry: Candidate already has the specified skill';
    END IF;
END