## Total reports
SELECT
  COUNT(`Vehicle Location`) AS `Reports`,
  COUNT(DISTINCT Make) AS `Distinct_Make`,
  COUNT(DISTINCT MODEL) AS `Distinct_Model`,
FROM
  `electric-vehicles-us.Vehicle_population_US.Vehicles`;


## Most popular EV in US
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


