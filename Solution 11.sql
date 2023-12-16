-- Solution 11--
CREATE VIEW Amount_to_be_paid AS
SELECT SBI.* , SAPD.AmountBalance FROM StudentBasicInformation AS SBI LEFT JOIN StudentAdmissionPaymentDetails AS SAPD 
ON SBI.StudentRollNo = SAPD.StudentRollNo ;

