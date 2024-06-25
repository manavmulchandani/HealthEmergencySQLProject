# HealthEmergencySQLProject
 Database for Ongoing Health Emergencies around the globe

## Introduction

This project is a collection of SQL scripts for managing ongoing health emergencies. The repository includes DDL scripts for creating tables, DML scripts for inserting emergency data into those tables, and various queries to extract meaningful insights for stakeholders. The project aims to create a scalable and robust database for emergency management, providing efficient and immediate response and planning capabilities.

## Entity Relationship Diagram (ERD)

The ERD for this project represents the relationships and entities needed to manage emergency data effectively. It includes entities such as EMERGENCY, RESPONSE_TEAM, DONATION, ORGANISATION, EMERGENCY_AREA, and INCIDENT_REPORT, among others, ensuring a scalable and flexible database design that can adapt to various emergency management needs.

![ERD3](https://github.com/manavmulchandani/HealthEmergencySQLProject/blob/main/ERD/erd3.svg)

## Usage

All the SQL Scripts are in the [`SQL Scripts`](https://github.com/manavmulchandani/HealthEmergencySQLProject/blob/main/SQL%20Scripts) directory 
- **DDL Scripts**: Run the `01_creating_tables.sql` script to create the necessary tables based on the ERD structure.
- **DML Scripts**: Run the `02_inserting_data.sql` script to populate the tables with sample data.
- **Queries**: Run the  `03_queries_for_stakeholders.sql` script to execute various queries for insights.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
