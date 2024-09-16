CREATE DEFINER=`root`@`localhost` PROCEDURE `InterviewedAtLeastTwice`()
BEGIN
    SELECT
        cd.`candidate_id`,
        cd.`firstname`,
        cd.`surname`
    FROM
        `Candidate Details` cd
    WHERE
        (
            SELECT
                COUNT(*)
            FROM
                `Interview Details` id
            WHERE
                cd.`candidate_id` = id.`candidate_id`
        ) >= 2;
END