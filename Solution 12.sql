SELECT * FROM StudentBasicInformation WHERE StudentRollNo NOT IN (
	SELECT SBI.StudentRollNo FROM StudentBasicInformation AS SBI INNER JOIN StudentScholarshipInformation as SSI ON SBI.StudentRollNo = SSI.StudentRollNo WHERE SSI.Deposited = 1
)
