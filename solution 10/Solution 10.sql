-- solution of question 10 --
DELIMITER //
CREATE PROCEDURE UpdateCategory (IN PStudentRollNo int) 
BEGIN
	DECLARE marks INT;
	SELECT AVG(SubjectObtainedMarks) INTO marks FROM StudentSubjectInformation WHERE StudentRollNo = PStudentRollNo GROUP BY StudentRollNo;
	IF marks >= 90 THEN
		UPDATE StudentScholarshipInformation SET ScholarshipCategory = 'A' WHERE StudentRollNo = PStudentRollNo;
	ELSEIF marks >= 80 AND marks < 90 THEN
		UPDATE StudentScholarshipInformation SET ScholarshipCategory = 'B' WHERE StudentRollNo = PStudentRollNo;
	ELSEIF marks >= 70 AND marks < 80 THEN
		UPDATE StudentScholarshipInformation SET ScholarshipCategory = 'C' WHERE StudentRollNo = PStudentRollNo ;
	ELSE
		UPDATE StudentScholarshipInformation SET ScholarshipCategory = 'D' WHERE StudentRollNo = PStudentRollNo;
    END IF;
END //
DELIMITER ;
