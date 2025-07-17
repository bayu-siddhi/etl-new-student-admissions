-- Change the data directory path!
-- Or use this method: https://blog.skyvia.com/import-csv-file-to-sql-server/#Method-2

BULK INSERT Faculties
FROM 'D:\...\data\oltp\selection\Faculties.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Majors
FROM 'D:\...\data\oltp\selection\Majors.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Admissions
FROM 'D:\...\data\oltp\selection\Admissions.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT MajorQuotas
FROM 'D:\...\data\oltp\selection\MajorQuotas.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Countries
FROM 'D:\...\data\oltp\selection\Countries.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Provinces
FROM 'D:\...\data\oltp\selection\Provinces.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Regencies
FROM 'D:\...\data\oltp\selection\Regencies.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Subdistricts
FROM 'D:\...\data\oltp\selection\Subdistricts.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT ApplicantAccounts
FROM 'D:\...\data\oltp\selection\ApplicantAccounts.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Schools
FROM 'D:\...\data\oltp\selection\Schools.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT SchoolMajors
FROM 'D:\...\data\oltp\selection\SchoolMajors.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Partners
FROM 'D:\...\data\oltp\selection\Partners.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Applicants
FROM 'D:\...\data\oltp\selection\Applicants.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT SelectedMajors
FROM 'D:\...\data\oltp\selection\SelectedMajors.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Parents
FROM 'D:\...\data\oltp\selection\Parents.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT SchoolSubjects
FROM 'D:\...\data\oltp\selection\SchoolSubjects.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT SchoolMajorSubjects
FROM 'D:\...\data\oltp\selection\SchoolMajorSubjects.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT SchoolReports
FROM 'D:\...\data\oltp\selection\SchoolReports.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT DocumentTypes
FROM 'D:\...\data\oltp\selection\DocumentTypes.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT ApplicantDocuments
FROM 'D:\...\data\oltp\selection\ApplicantDocuments.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT GlobalAcademicTests
FROM 'D:\...\data\oltp\selection\GlobalAcademicTests.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT GlobalAcademicTestScores
FROM 'D:\...\data\oltp\selection\GlobalAcademicTestScores.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT EnglishTests
FROM 'D:\...\data\oltp\selection\EnglishTests.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT EnglishTestScores
FROM 'D:\...\data\oltp\selection\EnglishTestScores.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT UTBKSubjects
FROM 'D:\...\data\oltp\selection\UTBKSubjects.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT UTBKScores
FROM 'D:\...\data\oltp\selection\UTBKScores.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Achievements
FROM 'D:\...\data\oltp\selection\Achievements.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT MandiriTests
FROM 'D:\...\data\oltp\selection\MandiriTests.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT MandiriTestScores
FROM 'D:\...\data\oltp\selection\MandiriTestScores.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);