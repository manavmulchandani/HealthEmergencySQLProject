
-- QUERY 1: Display donor type and donations received and top donors for each donor type

CREATE VIEW v_top_donors_by_type AS
SELECT donor_type, GROUP_CONCAT(donor_name ORDER BY donor_name ASC SEPARATOR ', ') AS Top_three_donors
FROM (
   SELECT donor_type, donor_name, SUM(amount), ROW_NUMBER() OVER (PARTITION BY donor_type ORDER BY SUM(amount) DESC) AS rn
   FROM donation
   GROUP BY donor_type, donor_name
) AS T
WHERE rn <= 3
GROUP BY donor_type
ORDER BY donor_type, rn;

SELECT d.Donor_type, COUNT(DISTINCT d.donation_id)Donors, 
	SUM(CASE WHEN d.currency = 'EUR' THEN d.amount END) AS Euros,
	SUM(CASE WHEN d.currency = 'USD' THEN d.amount END) AS Dollars,
	td.Top_three_donors
FROM donation d
JOIN v_top_donors_by_type td ON d.donor_type = td.donor_type
GROUP BY d.donor_type,td.Top_three_donors

-- QUERY 2: Display a list of ongoing emergencies, sorted by their severity from critical to low, and include information about the response teams that have been deployed , along with the count of team members for each emergency?"

SELECT e.title AS Emergency_title, e.Description, e.Severity,
   rt.Response_teams_count, rt.Total_members_in_response_teams
FROM emergency AS e
LEFT JOIN (
   SELECT emergency_id,
      COUNT(DISTINCT response_id) AS response_teams_count,
      SUM(member_count) AS total_members_in_response_teams
   FROM RESPONSE_TEAM
   GROUP BY emergency_id
) AS rt ON e.emergency_id = rt.emergency_id
WHERE e.end_date IS NULL
GROUP BY e.title, e.description, e.severity
ORDER BY CASE severity
      WHEN 'critical' THEN 1
      WHEN 'high' THEN 2
      WHEN 'medium' THEN 3
      WHEN 'low' THEN 4
   END;


-- QUERY 3: List all 'Large' or 'Global' scale organisations, and provide information on the number of emergencies they are supporting. Also breakdown their involvement based on severity of emergencies

SELECT CONCAT(o.name,' - ',o.scale,' scale (',o.TYPE,')') AS Organisation_name, 
	SUM(CASE WHEN e.severity = 'Critical' THEN 1 ELSE 0 END) AS Critical, 
	SUM(CASE WHEN e.severity = 'High' THEN 1 ELSE 0 END) AS High, 
	SUM(CASE WHEN e.severity = 'Medium' THEN 1 ELSE 0 END) AS Medium, 
	SUM(CASE WHEN e.severity = 'Low' THEN 1 ELSE 0 END) AS Low,
	COUNT(DISTINCT e.emergency_id) Total_emergencies
FROM organisations o
LEFT JOIN emergency_support es ON o.organisation_id = es.organisation_id
LEFT JOIN emergency e ON es.emergency_id = e.emergency_id AND e.end_date IS NULL
WHERE o.scale IN ('Large', 'Global')
GROUP BY o.name,o.type
ORDER BY COUNT(DISTINCT e.emergency_id) desc;
 
-- QUERY 4: List the countries that are affected by the emergencies and the donations given to emergencies in EURO

SELECT e.title AS Emergency_title, e.description AS Description, 
       GROUP_CONCAT(DISTINCT ea.country ORDER BY ea.country ASC SEPARATOR ', ') AS Affected_countries,
       SUM(
        CASE
            WHEN currency = 'USD' THEN amount * 0.93
            WHEN currency = 'EUR' THEN amount
        END
       ) AS Total_durations_in_euro
FROM emergency e
LEFT JOIN donation d ON e.emergency_id = d.emergency_id
INNER JOIN emergency_area ea ON e.emergency_id = ea.emergency_id
GROUP BY e.title, e.description
ORDER BY Total_durations_in_euro;

-- QUERY 5: Provide a list of top reporters for the news company based on the number of incident reports they have written

SELECT Company, GROUP_CONCAT(DISTINCT reporter_name ORDER BY reporter_name ASC SEPARATOR ', ') AS Top_reporters, Number_of_reports
FROM (
    SELECT
        a.company,
        a.name AS reporter_name,
        COUNT(b.report_id) AS number_of_reports,
        RANK() OVER (PARTITION BY a.company ORDER BY COUNT(b.report_id) DESC) AS rn
    FROM
        REPORTER a
    INNER JOIN
        INCIDENT_REPORT b ON a.reporter_id = b.reporter_id
    GROUP BY
        a.company, a.name
) AS RankedReporters
WHERE rn = 1
GROUP BY Company, Number_of_reports;
