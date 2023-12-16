-- Solution 15 - Using All Types of Joins

-- 1. Left Join , Example = Selecting Student details who has received scholarship more that 5000rs
SELECT SBI.StudentName, SBI.StudentSurname , SBI.StudentAddress , SBI.StudentCity , SBI.StudentClass , SBI.StudentSection , SSI.* FROM StudentScholarshipInformation as SSI LEFT JOIN StudentBasicInformation as SBI 
ON SSI.StudentRollNo = SBI.StudentRollNo WHERE SSI.ScholarshipAmount > 5000;

-- 2. Inner Join , Example = Selecting StudentRollNo's who has received scholarship this time
SELECT SBI.StudentRollNo FROM StudentBasicInformation AS SBI INNER JOIN StudentScholarshipInformation as SSI ON SBI.StudentRollNo = SSI.StudentRollNo WHERE SSI.Deposited = 1;

-- 3. Right Join , Exmaple = Showing student details with subject table for easier entry filling
SELECT SSI.* , SBI.StudentName, SBI.StudentSurname , SBI.StudentAddress , SBI.StudentCity , SBI.StudentClass , SBI.StudentSection FROM StudentBasicInformation AS SBI RIGHT JOIN StudentSubjectInformation AS SSI ON SSI.StudentRollNo = SBI.StudentRollNo