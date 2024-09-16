CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCandidate`(
    IN p_candidate_id INT,
    IN p_firstname VARCHAR(45),
    IN p_surname VARCHAR(45),
    IN p_address VARCHAR(100),
    IN p_telephone VARCHAR(20)
)
BEGIN
    INSERT INTO `Candidate Details` (candidate_id, firstname, surname, address, telephone)
    VALUES (p_candidate_id, p_firstname, p_surname, p_address, p_telephone);
END