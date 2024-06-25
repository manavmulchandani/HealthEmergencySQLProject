-- EMERGENCY
INSERT INTO EMERGENCY (title, description, start_date, end_date, location, severity)
VALUES
    ('COVID-19', 'COVID-19 pandemic', '2020-03-01', NULL, 'Global', 'Critical'),
    ('Ebola Outbreak', 'Ebola outbreak in Central Africa', '2023-09-15', '2023-12-31', 'Central Africa', 'High'),
    ('Zika Virus Outbreak', 'Zika virus outbreak in South America', '2011-10-05', '2017-11-30', 'South America', 'Medium'),
    ('Cholera Outbreak', 'Ongoing cholera outbreak in Yemen', '2023-09-20', NULL, 'Yemen', 'High'),
    ('Polio Outbreak', 'Polio outbreak in parts of Asia', '2011-10-10', '2013-12-31', 'Asia', 'Medium'),
    ('Malaria Outbreak', 'Malaria outbreak in Sub-Saharan Africa', '2023-10-15', '2023-11-30', 'Africa', 'Low'),
    ('Influenza', 'Influenza outbreak in parts of Asia', '2011-10-10', '2012-12-31', 'North America', 'Medium'),
    ('SARS', 'Severe Acute Respiratory Syndrome', '2002-02-10', '2005-10-31', 'Global', 'High'),
    ('Ebola', 'Ebola outbreak in Uganda', '2021-02-10', NULL, 'East Africa', 'High'),
    ('Polio Outbreak', 'Polio outbreak in parts of Egypt', '2008-10-10', '2015-12-31', 'Egpyt', 'Low');

-- ORGANISATIONS
INSERT INTO ORGANISATIONS (name, address, scale, type)
VALUES
    ('Hope Medical Foundation', '334 Main St, London', 'Small', 'Private'),
    ('Relief Aid International', '789 Oak St, New York', 'Large', 'Government'),
    ('WHO', '111 Spruce St, New York', 'Global', 'NGO'),
    ('The Rockefeller Foundation', '987 Pine St, London', 'Medium', 'Private'),
    ('Public Health Initiative', '654 Birch St, Mumbai', 'Small', 'Government'),
    ('Global Health Services', '456 Elm St, New York', 'Medium', 'Government'),
    ('Community Relief Network', '321 Cedar St, Mumbai', 'Large', 'NGO'),
    ('Healthcare Heroes', '444 Redwood St, City J', 'Small', 'Private'),
    ('Humanitarian Aids', '333 Ash St, Seoul', 'Large', 'NGO'),
    ('UNICEF', '222 Maple St, Seoul', 'Global', 'NGO'),
    ('Red cross', '232 Honey Rd, California', 'Global', 'NGO'),
    ('Samaritans Purse', '345 Petersburg, America', 'Large', 'NGO'),
    ('Bill & Melinda Gates Foundation', '554 Louis Rd, Los Angeles', 'Large', 'Private');

-- EMERGENCY_SUPPORT
INSERT INTO EMERGENCY_SUPPORT (emergency_id, organisation_id)
VALUES
    (1,1),
    (3,2),
    (4,3),
    (6,3),
    (8,3),
    (9,3),
    (10,3),
    (1,4),
    (2,5),
    (9,6),
    (3,7),
    (4,8),
    (6,9),
    (8,9),
    (9,10),
    (4,2),
    (9,2),
    (1,2),
    (8,10),
    (10,2);

-- RESPONSE_TEAM
INSERT INTO RESPONSE_TEAM (emergency_id, department, lead_name, mobile, email, member_count, location)
VALUES
    (1, 'Medical Response', 'Dr. Smith', 1234567890, 'drsmith@gmail.com', 15, 'London, England, United Kingdom'),
    (1, 'Logistics Support', 'John Doe', 9876543210, 'johndoe@gmail.com', 10, 'Newark, New Jersey, United States'),
    (1, 'Medical Support', 'Dr. Johnson', 5551237890, 'drjohnson@gmail.com', 20, 'London, England, United Kingdom'),
    (2, 'Logistics Support', 'Jane Smith', 9987645789, 'janesmith@gmail.com', 8, 'Kinshasa, Republic of the Congo'),
    (2, 'Medical Support', 'Dr. Wilson', 3331237890, 'drwilson@gmail.com', 16, 'Kigali, Rwanda'),
    (3, 'Medical Response', 'Dr. Brown', 6664567890, 'drbrown@gmail.com', 25, 'South America, Worldwide'),
    (3, 'Logistics Support', 'Mary Davis', 5565567932, 'marydavis@gmail.com', 18, 'Rio de Janeiro, Brazil'),
    (4, 'Medical Support', 'Dr. Perez', 5551237890, 'drperez@gmail.com', 22, 'Aden, Yemen'),
    (5, 'Medical Response', 'Dr. Smith', 6669997890, 'drsmith@gmail.com', 14, 'Asia, Worldwide'),
    (5, 'Medical Support', 'Dr. Johnson', 8884447890, 'drjohnson@gmail.com', 16, 'Mumbai, India'),
    (6, 'Logistics Support', 'Jane Smith', 3337773210, 'janesmith@gmail.com', 15, 'Lagos, Nigeria'),
    (6, 'Medical Support', 'Dr. Wilson', 5558887890, 'drwilson@gmail.com', 28, 'Nairobi, Kenya'),
    (7, 'Medical Response', 'Dr. Brown', 9982973654, 'drbrown@gmail.com', 15, 'North America, Worldwide'),
    (7, 'Logistics Support', 'Mary Davis', 8738762453, 'marydavis@gmail.com', 10, 'Mexico City, Mexico'),
    (8, 'Logistics Support', 'Linda Johnson', 9938746637, 'lindajohnson@gmail.com', 12, 'Guangzhou, China'),
    (8, 'Medical Support', 'Dr. Perez', 8373733664, 'drperez@gmail.com', 22, 'Toronto, Canada'),
    (9, 'Logistics Support', 'John Doe', 9228887876, 'johndoe@gmail.com', 10, 'Kampala, Uganda'),
    (9, 'Medical Support', 'Dr. Johnson', 8882227890, 'drjohnson@gmail.com', 17, 'Kinshasa, Republic of the Congo'),
    (10, 'Logistics Support', 'Jane Smith', 8746763556, 'janesmith@gmail.com', 13, 'Cairo, Egypt'),
    (10, 'Medical Support', 'Dr. Wilson', 9989887876, 'drwilson@gmail.com', 22, 'Luxor, Egypt');

-- DONATION
INSERT INTO DONATION (emergency_id, donor_name, date, amount, currency, donor_type)
VALUES
    (1, 'Alice Johnson', '2023-10-02', 1000, 'USD', 'Private'),
    (2, 'Government of France', '2023-09-20', 50000, 'EUR', 'Government'),
    (3, 'Sarah Davis', '2021-10-15', 75000, 'USD', 'NGO'),
    (1, 'Mark Wilson', '2023-10-04', 8000, 'EUR', 'Private'),
    (2, 'Government of India', '2023-09-25', 30000, 'USD', 'Government'),
    (3, 'Lucas Taylor', '2023-10-11', 6000, 'EUR', 'NGO'),
    (8, '', '2023-09-30', 200, 'USD', 'Private'),
    (5, 'Government of Bhutan', '2023-10-08', 900000, 'EUR', 'Government'),
    (6, 'Noah Smith', '2021-10-13', 4500, 'USD', 'NGO'),
    (4, NULL, '2022-10-05', 3500, 'EUR', 'Private'),
	 (1, 'Mark Wilson', '2023-10-04', 8000, 'EUR', 'Private'),
    (2, 'Government of India', '2023-09-25', 3000, 'USD', 'Government'),
    (8, 'Lucas Taylor', '2022-10-11', 6000, 'EUR', 'NGO'),
    (8, 'Sophia Johnson', '2023-09-30', 20000, 'USD', 'Private'),
    (9, 'United states Government', '2023-10-08', 900000, 'USD', 'Government'),
    (10, 'Mark Wilson', '2023-10-04', 800, 'EUR', 'Private'),
    (7, 'United states Government', '2023-09-25', 300000, 'USD', 'Government'),
    (6, 'Lucas Taylor', '2023-10-11', 6000, 'EUR', 'NGO'),
    (4, 'Sophia Johnson', '2023-09-30', 2000, 'USD', 'Private'),
    (10, 'UK Government', '2023-10-08', 90000, 'EUR', 'Government'),
    (3, 'Liam Williams', '2021-10-10', 20000, 'USD', 'Private'),
    (5, 'International Health Fund', '2023-09-22', 150000, 'EUR', 'NGO'),
    (4, 'Olivia Davis', '2022-10-16', 8500, 'USD', 'Private'),
    (6, 'Red Cross', '2021-09-28', 45000, 'EUR', 'NGO'),
    (7, 'Emma Smith', '2022-10-12', 1200, 'USD', 'Private'),
    (9, 'Government of Nigeria', '2023-09-29', 55000, 'USD', 'Government'),
    (8, 'Mia Johnson', '2023-10-09', 9500, 'EUR', 'Private'),
    (10, 'United Nations', '2022-09-26', 68000, 'USD', 'NGO'),
    (1, 'Noah White', '2023-10-14', 1800, 'EUR', 'Private'),
    (2, 'Government of Brazil', '2023-09-24', 41000, 'USD', 'Government'),
    (3, 'Sophia Davis', '2023-10-01', 7500, 'USD', 'Private'),
    (4, 'World Health Organization', '2023-09-21', 56000, 'EUR', 'NGO'),
    (5, 'Lucas Smith', '2021-10-06', 2100, 'USD', 'Private'),
    (7, 'Government of Australia', '2023-09-27', 38000, 'USD', 'Government'),
    (6, 'Ella Johnson', '2023-10-03', 9900, 'EUR', 'Private');


-- EMERGENCY_AREA
INSERT INTO EMERGENCY_AREA (emergency_id, location, city, state, country)
VALUES
    (1, 'Toronto', 'Ontario', 'Ontario', 'Canada'),
    (1, 'New York', 'New York', 'New York', 'United States'),
    (1, 'London', 'England', 'England', 'United Kingdom'),
    (1, 'Sydney', 'New South Wales', 'New South Wales', 'Australia'),
    (1, 'Bogota', 'Bogota', 'Bogota', 'Colombia'),
    (1, 'Lima', 'Lima', 'Lima', 'Peru'),
	 (2, 'Libreville', 'Estuaire', 'Estuaire', 'Gabon'),
    (3, 'South America', 'Rio de Janeiro', 'Rio de Janeiro', 'Brazil'),
    (3, 'Buenos Aires', 'Buenos Aires', 'Buenos Aires', 'Argentina'),
    (4, 'Aden', 'Aden', 'Aden', 'Yemen'),
    (4, 'Hodeidah', 'Hodeidah', 'Hodeidah', 'Yemen'),
    (5, 'Asia', 'Karachi', 'Sindh', 'Pakistan'),
    (5, 'India', 'Delhi', 'Delhi', 'India'),
    (6, 'Lagos', 'Lagos', 'Lagos', 'Nigeria'),
    (6, 'Nairobi', 'Nairobi', 'Nairobi', 'Kenya'),
    (7, 'Los Angeles', 'California', 'United States', 'United States'),
    (7, 'Chicago', 'Illinois', 'United States', 'United States'),
	 (8, 'Kinshasa', 'Kinshasa', 'Kinshasa', 'Democratic Republic of the Congo'),
    (8, 'Guangzhou', 'Guangdong', 'China', 'China'),
    (8, 'Alexandria', 'Alexandria', 'Alexandria', 'Egypt'),
    (8, 'Toronto', 'Ontario', 'Ontario', 'Canada'),
    (9, 'East Africa', 'Kampala', 'Central Region', 'Uganda'),
    (9, 'Nairobi', 'Nairobi', 'Nairobi', 'Kenya'),
    (10, 'Giza', 'Giza', 'Giza', 'Egypt');


-- REPORTER
INSERT INTO REPORTER(name, email, mobile, company)
VALUES
    ('Ethan Harris', 'ethan.harris@gmail.com', 9910299389, 'Global News Network'),
    ('Ava Martin', 'ava.martin@gmail.com', 8928938927, 'BBC'),
    ('Noah Davis', 'noah.davis@gmail.com', 9289283789, 'Global News Network'),
    ('Isabella White', 'isabella.white@gmail.com', 8728398476, 'BBC'),
    ('Mason Johnson', 'mason.johnson@gmail.com', 8893872675, 'Global News Network'),
    ('Sophia Brown', 'sophia.brown@gmail.com', 9827647563, 'BBC'),
    ('Logan Wilson', 'logan.wilson@gmail.com', 7839846738, 'Global News Network'),
    ('Oliver Smith', 'oliver.smith@gmail.com', 8746736746, 'CNN'),
    ('Emma Johnson', 'emma.johnson@gmail.com', 8983765264, 'CNN'),
    ('William Davis', 'william.davis@gmail.com', 9989887388, 'Global News Network');

-- INCIDENT_REPORT
INSERT INTO INCIDENT_REPORT (area_id, reporter_id, title, date, location, body)
VALUES
    (1, 5, 'Field Clinic Incident', '2023-10-11', 'London', 'Incident report for Field Clinic in London.'),
    (1, 9, 'Newark Shelter Report', '2023-09-30', 'New Jersey', 'Report on the conditions at the Newark Shelter in New Jersey.'),
    (2, 7, 'Health Center Outbreak', '2023-10-05', 'Paris', 'Report on the disease outbreak at the Health Center in Paris.'),
    (5, 8, 'Cholera Outbreak in Yemen', '2023-10-16', 'Yemen', 'Detailed report on the cholera outbreak in Yemen.'),
    (8, 2, 'Polio Outbreak in Asia', '2023-10-19', 'Asia', 'Report on the polio outbreak in Asian regions.'),
    (11, 10, 'Malaria in Sub-Saharan Africa', '2023-10-25', 'Sub-Saharan Africa', 'Incident report on malaria cases in Sub-Saharan Africa.'),
    (11, 1, 'Influenza Outbreak', '2009-10-22', 'North America', 'Report on the influenza outbreak in North America.'),
    (12, 4, 'SARS Pandemic', '2002-02-15', 'Global', 'Comprehensive report on the global SARS pandemic.'),
    (10, 6, 'Ebola Outbreak in Uganda', '2021-02-22', 'Uganda', 'Report on the Ebola outbreak in Uganda.'),
    (10, 3, 'Polio Outbreak in Egypt', '2008-10-18', 'Egypt', 'Report on the polio outbreak in Egypt.'),
    (12, 2, 'Emergency Shelter Incident', '2023-09-28', 'New York', 'Report on an incident at the Emergency Shelter in New York.'),
    (12, 7, 'Community Center Incident', '2023-10-14', 'Cairo', 'Report on an incident at the Community Center in Cairo.'),
    (1, 9, 'Local School Issue', '2023-10-08', 'Mumbai', 'Report on a problem at the Local School in Mumbai.'),
    (2, 1, 'Relief Camp Conditions', '2023-10-17', 'Moscow', 'Report on the conditions at the Relief Camp in Moscow.'),
    (3, 5, 'Rescue Base Operations', '2023-10-19', 'Seoul', 'Report on the operations at the Rescue Base in Seoul.');
