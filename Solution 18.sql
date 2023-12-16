-- Solution 18
SELECT ScholarshipName , ScholarshipCategory , COUNT(*) AS Count FROM StudentScholarshipInformation GROUP BY ScholarshipName , ScholarshipCategory;

