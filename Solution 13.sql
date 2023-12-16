-- Solution 13
DELIMITER //
CREATE PROCEDURE AmountLeft (IN PStudentRollNo int)
BEGIN
	SELECT AmountBalance FROM StudentAdmissionPaymentDetails WHERE StudentRollNo = PStudentRollNo;
END //
DELIMITER ;

CALL AmountLeft (8);