-- Solution 5
SET SQL_SAFE_UPDATES = 0;
UPDATE StudentBasicInformation SET StudentAddress = '502 Zaidi Farm' WHERE StudentRollNo = 2;
UPDATE StudentBasicInformation SET StudentCity = 'Meerut' WHERE StudentRollNo = 2;
UPDATE StudentAdmissionPaymentDetails SET AmountBalance = 20000 WHERE StudentRollNo = 8;
UPDATE StudentSubjectInformation SET SubjectObtainedMarks = 97 WHERE StudentRollNo = 1 and SubjectOpted = 'Maths';
UPDATE StudentSubjectInformation SET SubjectObtainedMarks = 45 WHERE StudentRollNo = 1 and SubjectOpted = 'Physics';
