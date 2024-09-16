CREATE DEFINER=`root`@`localhost` PROCEDURE `FindPositionsBySkill`(
	IN p_skillID varchar(10)
)
BEGIN
    SELECT DISTINCT pd.*
    FROM `Position_Skill` ps
    JOIN `Position Details` pd ON ps.`position_id` = pd.`position_id`
    WHERE ps.`skill_id` = p_skillID;
END