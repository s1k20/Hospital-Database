CREATE PROCEDURE GetCandidatesByPosition(
    IN p_PositionId INT
)
BEGIN
    -- Select candidates who have at least one skill required by the given position identifier
    SELECT DISTINCT cd.*
    FROM `Candidate Details` cd
    JOIN `Candidate_Skill` cs ON cd.`candidate_id` = cs.`candidate_id`
    JOIN `Position_Skill` ps ON cs.`skill_id` = ps.`skill_id`
    WHERE ps.`position_id` = p_PositionId;
END
