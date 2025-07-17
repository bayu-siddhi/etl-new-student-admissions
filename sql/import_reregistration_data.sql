-- Change the data directory path!
-- Or use this method: https://blog.skyvia.com/import-csv-file-to-sql-server/#Method-2

BULK INSERT Faculties
FROM 'D:\...\data\oltp\re-registration\Faculties.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Majors
FROM 'D:\...\data\oltp\re-registration\Majors.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Admissions
FROM 'D:\...\data\oltp\re-registration\Admissions.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Partners
FROM 'D:\...\data\oltp\re-registration\Partners.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Countries
FROM 'D:\...\data\oltp\re-registration\Countries.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Provinces
FROM 'D:\...\data\oltp\re-registration\Provinces.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Regencies
FROM 'D:\...\data\oltp\re-registration\Regencies.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Subdistricts
FROM 'D:\...\data\oltp\re-registration\Subdistricts.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Schools
FROM 'D:\...\data\oltp\re-registration\Schools.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT ReRegistrationAccounts
FROM 'D:\...\data\oltp\re-registration\ReRegistrationAccounts.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT SchoolMajors
FROM 'D:\...\data\oltp\re-registration\SchoolMajors.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Applicants
FROM 'D:\...\data\oltp\re-registration\Applicants.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT Parents
FROM 'D:\...\data\oltp\re-registration\Parents.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT DocumentTypes
FROM 'D:\...\data\oltp\re-registration\DocumentTypes.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT ApplicantDocuments
FROM 'D:\...\data\oltp\re-registration\ApplicantDocuments.tsv'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

GO
