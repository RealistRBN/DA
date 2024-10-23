SELECT * FROM dataset_1 d WHERE destination = 'Home' AND weather = 'Rainy' ORDER BY passanger DESC; -- the 'd' in dataset_1 d allows for dataset to be called with 'd.' prefix

select destination , time,  AVG(temperature) as 'AVG_Temp', MAX(temperature), COUNT(DISTINCT temperature)
from dataset_1 d 
where time <> '10PM' -- removes all times 10PM
group by destination , time -- it groups destination and time, the alone values only have values of those hours, same with rest etc 
order by time; -- certain commands have to be set after for query to execute e.g. order by after group by

select passanger
from dataset_1 d
group by passanger 
having passanger = 'Alone';

SELECT * 
FROM dataset_1 d 
UNION ALL -- stacks two tables onto each other , UNION ALL allows duplicates (typically wanted), UNION doesnt allow duplicates
SELECT * 
FROM table_to_union ttu;

SELECT DISTINCT destination FROM -- You can query a query
(
SELECT * 
FROM dataset_1 d 
UNION ALL -- stacks two tables onto each other , UNION ALL allows duplicates (typically wanted), UNION doesnt allow duplicates
SELECT * 
FROM table_to_union ttu
);

SELECT *
FROM dataset_1 d
LEFT JOIN table_to_join ttj
on d.time == ttj.time LIMIT 10;

SELECT destination, passanger
FROM dataset_1 d
WHERE passanger = 'Alone';

/*
SELECT destination, passanger		THIS IS ESSENTIALLY THE SAME AS ABOVE BUT USING A SUBQUERY
FROM 
(
SELECT * 
FROM dataset_1 d
WHERE passanger = 'Alone'
); */ 

SELECT *
FROM dataset_1 d 
WHERE time LIKE '%pm%';

SELECT destination, passanger, age,
FROM dataset_1 d
WHERE d.destination <> 'No Urgent Place' AND age BETWEEN 18 and 22;

SELECT passanger
FROM dataset_1 d 
WHERE d.passanger in ('Alone');

SELECT MIN(AGE)
FROM dataset_1 d;

SELECT abs(5) - (4)

SELECT destination, weather, avg(temperature) OVER (PARTITION BY weather ORDER BY destination)
FROM dataset_1 d;






