CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCandidatesInterviewedOnDate`(IN interviewDateParam DATETIME)
BEGIN
    SELECT DISTINCT cd.candidate_id
    FROM `Candidate Details` cd
    JOIN `Interview Details` id ON cd.candidate_id = id.candidate_id
    WHERE DATE(id.Interview_date) = DATE(interviewDateParam)
    AND NOT EXISTS (
        SELECT 1
        FROM `Interview Details` id2
        WHERE cd.candidate_id = id2.candidate_id
        AND DATE(id2.Interview_date) <> DATE(interviewDateParam)
    );
END