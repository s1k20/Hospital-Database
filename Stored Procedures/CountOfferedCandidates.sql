CREATE PROCEDURE CountOfferedCandidates()
BEGIN
    SELECT COUNT(*) AS numOfferedCandidates
    FROM `Interview Details`
    WHERE `offered_position` = 1;
END;

