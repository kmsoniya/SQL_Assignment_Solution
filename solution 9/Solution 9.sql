-- Solution 9
DELIMITER //
CREATE PROCEDURE CalculateMarksPercentage()
BEGIN
DECLARE cnt int DEFAULT 1 ;

WHILE( cnt<17 )
DO
	UPDATE StudentSubjectInformation
    SET StudentMarksPercentage = ((SubjectObtainedMarks*100)/SubjectTotalMarks) 
    WHERE StudentRollNo = cnt;
	SET cnt = cnt + 1; 
END WHILE;

END //

DELIMITER ;

