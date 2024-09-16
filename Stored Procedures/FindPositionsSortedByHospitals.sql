CREATE DEFINER=`root`@`localhost` PROCEDURE `FindPositionsSortedByHospitals`()
BEGIN
    SELECT pd.*, hd.`Hospital Name`
    FROM `Position Details` pd
    JOIN `Hospital Details` hd ON pd.`hospital_hiring` = hd.`Hospital Identifier`
    ORDER BY pd.`hospital_hiring`, pd.`position_id` ASC;
END