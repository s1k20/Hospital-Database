CREATE PROCEDURE GetCandidatesBySurname(
    IN p_Surname VARCHAR(45)
)
BEGIN
    SELECT *
    FROM `Candidate Details`
    WHERE `surname` = p_Surname;
END
