
CREATE PROCEDURE InsertInterview(
    IN p_InterviewId INT,
    IN p_PositionId INT,
    IN p_CandidateId INT,
    IN p_InterviewDate DATETIME,
    IN p_OfferedPosition TINYINT
)
BEGIN

    IF NOT EXISTS (SELECT * FROM `Interview Details` WHERE `interview_id` = p_InterviewId) THEN
        INSERT INTO `Interview Details` (`interview_id`, `position_id`, `candidate_id`, `Interview_date`, `offered_position`)
        VALUES (p_InterviewId, p_PositionId, p_CandidateId, p_InterviewDate, p_OfferedPosition);
    ELSE
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate entry: Interview Id already exists';
    END IF;
END
