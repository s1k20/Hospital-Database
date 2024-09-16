CREATE PROCEDURE FindInterviewsByDate(IN p_interview_date DATE)
BEGIN
    SELECT *
    FROM `Interview Details`
    WHERE DATE(`Interview_date`) = p_interview_date;
END;
