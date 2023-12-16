WITH 
TableA AS (
	SELECT StudentRollNo , AVG(SubjectObtainedMarks) AS AvgMarks FROM StudentSubjectInformation GROUP BY StudentRollNo
)
SELECT SBI.* , TableA.AvgMarks FROM StudentBasicInformation AS SBI INNER JOIN TableA 
ON SBI.StudentRollNo = TableA.StudentRollNo ORDER BY TableA.AvgMarks DESC LIMIT 5;