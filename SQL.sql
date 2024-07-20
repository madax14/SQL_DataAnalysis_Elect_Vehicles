-- Total reports
SELECT
  COUNT(`Vehicle Location`) AS `Reports`,
  COUNT(DISTINCT Make) AS `Distinct_Make`,
  COUNT(DISTINCT MODEL) AS `Distinct_Model`,
FROM
  `electric-vehicles-us.Vehicle_population_US.Vehicles`;


-- Most popular EV in US
SELECT
  `Model`,
  `Make`,
  COUNT(*) AS `Total`
FROM
  `electric-vehicles-us.Vehicle_population_US.Vehicles`
GROUP BY
  `Model`,
  `Make`
ORDER BY
  Total DESC
LIMIT
  10;


-- Checking for missing values
SELECT
COUNT(*) AS `Total`,
COUNT(`Make`) AS `Make_Count`,
COUNT(`Model`) AS `Model_Cont`,
COUNT(`Model Year`) AS `Model_year_Cont`
FROM
  `electric-vehicles-us.Vehicle_population_US.Vehicles`;


-- EV that has most long range battery.
SELECT
  AVG(`Electric Range`) AS `Range`,
  `Make`,
  `Model`
FROM
  `electric-vehicles-us.Vehicle_population_US.Vehicles`
GROUP BY
  `Model`,
  `Make`
ORDER BY
  `Range` DESC
