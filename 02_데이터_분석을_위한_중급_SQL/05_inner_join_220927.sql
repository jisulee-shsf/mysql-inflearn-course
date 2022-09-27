-- [Section 1] INNER JOIN

-- Q1. Customers & Orders & Shipper table을 key 컬럼 기준으로 INNER JOIN 실행하기
SELECT *
FROM Customers
     INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
     INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID;

-- Q2. Q1 간략히 재 실행하기
SELECT *
FROM Customers a
     INNER JOIN Orders b ON a.CustomerID = b.CustomerID
     INNER JOIN Shippers c ON b.ShipperID = c.ShipperID;

-- [Section 2] HakerRank

/* Q1. African Cities)
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns. */
SELECT CITY.NAME
FROM CITY
     INNER JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE CONTINENT = 'Africa';
     
/* Q2. Population Census)
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns. */
SELECT SUM(CITY.POPULATION)
FROM CITY 
     INNER JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.Code
WHERE CONTINENT = 'Asia';

/* Q3. Average Population of Each Continent)
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) 
and their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns. */
SELECT COUNTRY.CONTINENT
     , FLOOR(AVG(CITY.POPULATION))
FROM CITY 
     INNER JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY CONTINENT;
