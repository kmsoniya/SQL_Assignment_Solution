SELECT SBI.* , SSI.* FROM StudentScholarshipInformation as SSI LEFT JOIN StudentBasicInformation as SBI 
ON SSI.StudentRollNo = SBI.StudentRollNo WHERE SSI.Deposited = 0 ;
