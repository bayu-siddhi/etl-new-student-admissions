# ETL - Pentaho Data Integration - New Student Admissions

## Project Overview

This project implements an ETL (Extract, Transform, Load) pipeline using Pentaho Data Integration (Kettle) to build a data warehouse for new student admissions data. It sources data from internal OLTP systems and external sources, integrating it into a central data warehouse.

## Data Sources

*   **OLTP Selection (SQL Server):** Contains data related to student selection processes.
*   **OLTP Reregistration (SQL Server):** Contains data about student reregistrations.
*   **MinIO Object Storage & DuckDB:** Simulates external data sources, providing flexibility for incorporating data from various origins.

## Directory Structure

```
└── etl-new-student-admissions/
    ├── README.md                           # This file
    ├── config.properties.example           # Example configuration file
    ├── configuration.kjb                   # Job for loading configurations
    ├── one_time_historical_job.kjb         # Job for one-time historical ETL (main file)
    ├── incremental_job.kjb                 # Job for incremental ETL (main file)
    ├── data/                               # Data directory
    │   ├── external/                       # External data sources (MinIO)
    │   │   ├── sbmptn_snbt.csv             # Sample SBMPTN SNBT data (CSV)
    │   │   ├── sbmptn_snbt.parquet         # Sample SBMPTN SNBT data (Parquet)
    │   │   ├── snmptn_snbp.csv             # Sample SNMPTN SNBP data (CSV)
    │   │   └── snmptn_snbp.parquet         # Sample SNMPTN SNBP data (Parquet)
    │   └── oltp/                           # OLTP data sources
    │       ├── re-registration/            # Re-registration data
    │       │   ├── Admissions.tsv
    │       │   ├── ApplicantDocuments.tsv
    │       │   ├── Applicants.tsv
    │       │   └── ...
    │       └── selection/                  # Selection data
    │           ├── Achievements.tsv
    │           ├── Admissions.tsv
    │           ├── ApplicantAccounts.tsv
    │           └── ...
    ├── incremental/                        # Transformations for incremental ETL
    │   ├── DimAdmissions.ktr
    │   ├── DimApplicants.ktr
    │   ├── DimDates.ktr
    │   ├── DimMajors.ktr
    │   ├── DimPartners.ktr
    │   ├── DimSchools.ktr
    │   ├── FactMajorQuotas.ktr
    │   ├── FactNewStudentReregistrations.ktr
    │   ├── FactNewStudentSelections.ktr
    │   └── set_date_variables.ktr
    ├── one-time-historical/                # Transformations for one-time historical ETL
    │   ├── DimAdmissions.ktr
    │   ├── DimApplicants.ktr
    │   ├── DimDates.ktr
    │   ├── DimMajors.ktr
    │   ├── DimPartners.ktr
    │   ├── DimSchools.ktr
    │   ├── FactMajorQuotas.ktr
    │   ├── FactNewStudentReregistrations.ktr
    │   └── FactNewStudentSelections.ktr
    └── sql/                                # SQL scripts
        ├── create_olap_new_students.sql
        ├── create_oltp_reregistration.sql
        ├── create_oltp_selection.sql
        ├── import_reregistration_data.sql
        └── import_selection_data.sql
```

## Key Files

*   `config.properties.example`:  An example of the configuration file used to store database connection details, file paths, and other parameters.  Copy this file to `config.properties` and modify it with your specific settings.
*   `configuration.kjb`: A Pentaho Data Integration job that loads configuration settings from the `config.properties` file.
*   `one_time_historical_job.kjb`: A Pentaho Data Integration job that performs a full, one-time ETL load of historical data.
*   `incremental_job.kjb`: A Pentaho Data Integration job that performs incremental ETL, processing only the data that has changed since the last run.

## Data Dictionary

The `data` directory contains the source data for the ETL process.

*   `data/external`: Contains sample data simulating external sources, stored in both CSV and Parquet formats.
*   `data/oltp`: Contains data extracted from the OLTP databases, organized into `re-registration` and `selection` subdirectories. The data is stored in TSV (Tab-Separated Values) format.

## ETL Processes

The ETL processes are implemented using Pentaho Data Integration (Kettle) transformations and jobs.

*   `one-time-historical/`: Contains transformations designed for loading historical data in a single run.
*   `incremental/`: Contains transformations designed for incremental data loading.

## SQL Scripts

The `sql` directory contains SQL scripts used for:

*   Creating tables in the OLTP databases.
*   Importing data into the OLTP database.
*   Creating the OLAP database schema.

## Technologies Used

*   Pentaho Data Integration (Kettle)
*   SQL Server
*   DuckDB
*   MinIO

## Getting Started

1. **Clone the repository**

    ```shell
    git clone https://github.com/bayu-siddhi/etl-new-student-admissions.git
    cd etl-new-student-admissions
    ```

2. **Configure the environment**

    ```shell
    cp config.properties.example config.properties
    ```

    Then edit `config.properties` with your database connection details, MinIO credentials, and file paths.

3. **Execute SQL scripts**

    - Run scripts in the `sql/` directory to create schemas, tables, and import data source.

4. **Run ETL jobs**
    - Ensure all required software, drivers, and database connections are properly configured.
    - Open Pentaho Data Integration (Spoon).
    - Import and execute:
        - `one_time_historical_job.kjb`
        - `incremental_job.kjb`

---

> [!NOTE]
> - This project is intended for educational and demonstration purposes.
> - The sample data provided in the `data` directory is dummy data created solely for educational and demonstration purposes, and does not represent actual student information or the real systems from which such data might originate.
