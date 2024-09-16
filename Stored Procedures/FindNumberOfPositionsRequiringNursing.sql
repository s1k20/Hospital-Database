CREATE DEFINER=`root`@`localhost` PROCEDURE `FindNumberOfPositionsRequiringNursing`()
BEGIN
    SELECT COUNT(DISTINCT pd.`position_id`) AS num_positions
    FROM `Position_Skill` ps
    JOIN `Position Details` pd ON ps.`position_id` = pd.`position_id`
    JOIN `Skills Details` sd ON ps.`skill_id` = sd.`skill_id`
    WHERE sd.`skill_ID` = 'NUR01' OR sd.`skill_ID` = 'NUR02' OR sd.`skill_ID` = 'NUR03' OR sd.`skill_ID` = 'NUR04' ;
END