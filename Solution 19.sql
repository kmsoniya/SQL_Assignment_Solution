-- Solution 19
SELECT SBI.* , SSI.ScholarshipAmount FROM StudentBasicInformation as SBI LEFT JOIN StudentScholarshipInformation as SSI ON SBI.StudentRollNo = SSI.StudentRollNo 
WHERE SBI.StudentRollNo = (SELECT StudentRollNo FROM StudentSubjectInformation GROUP BY StudentRollNo, SubjectObtainedMarks HAVING SubjectObtainedMarks = MAX(SubjectObtainedMarks) limit 1)