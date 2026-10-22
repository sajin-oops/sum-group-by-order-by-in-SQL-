-- Day - 1
CREATE TABLE members (
    memid INTEGER PRIMARY KEY,
    surname VARCHAR(200),
    firstname VARCHAR(200),
    address VARCHAR(300),
    zipcode INTEGER,
    telephone VARCHAR(20),
    recommendedby INTEGER,
    joindate TIMESTAMP
);


CREATE TABLE facilities (
    facid INTEGER PRIMARY KEY,
    name VARCHAR(100),
    membercost NUMERIC,
    guestcost NUMERIC,
    initialoutlay NUMERIC,
    monthlymaintenance NUMERIC
);


CREATE TABLE bookings (
    facid INTEGER,
    memid INTEGER,
    starttime TIMESTAMP,
    slots INTEGER,
    PRIMARY KEY (facid, memid, starttime)
);

INSERT INTO members
(memid, surname, firstname, address, zipcode, telephone, recommendedby, joindate)
VALUES
(1, 'Smith', 'John', '12 Main Street', 600001, '9876543210', NULL, '2012-07-01 10:00:00'),
(2, 'Brown', 'Sarah', '25 Park Road', 600002, '9876543211', 1, '2012-07-05 11:00:00'),
(3, 'Wilson', 'David', '8 Lake View', 600003, '9876543212', 1, '2012-07-10 12:00:00'),
(4, 'Taylor', 'Emma', '45 Church Street', 600004, '9876543213', 2, '2012-07-15 09:00:00'),
(28, 'Farrell', 'David', '10 Green Road', 600028, '9876543228', 2, '2012-08-01 10:00:00');

INSERT INTO facilities
(facid, name, membercost, guestcost, initialoutlay, monthlymaintenance)
VALUES
(1, 'Tennis Court 1', 5, 25, 10000, 200),
(2, 'Tennis Court 2', 5, 25, 8000, 200),
(3, 'Pool', 3, 6, 4000, 100),
(4, 'Gym', 0, 5, 5000, 300);

INSERT INTO bookings
(facid, memid, starttime, slots)
VALUES
(1, 28, '2012-09-18 09:00:00', 2),
(2, 28, '2012-09-18 13:30:00', 2),
(3, 28, '2012-09-18 17:30:00', 3),
(1, 28, '2012-09-18 20:00:00', 2),
(4, 28, '2012-09-19 09:30:00', 2),
(2, 28, '2012-09-19 12:00:00', 2),
(3, 28, '2012-09-19 15:00:00', 3),
(1, 28, '2012-09-20 15:30:00', 2);

INSERT INTO members
(memid, surname, firstname, address, zipcode, telephone, recommendedby, joindate)
VALUES
(5, 'Anderson', 'Michael', '15 Rose Street', 600005, '9876543215', 1, '2012-08-05 10:00:00'),
(6, 'Thomas', 'Emily', '22 Hill Road', 600006, '9876543216', 2, '2012-08-10 11:00:00'),
(7, 'Jackson', 'Robert', '31 Park Avenue', 600007, '9876543217', 3, '2012-08-15 09:30:00'),
(8, 'White', 'Sophia', '44 Lake Road', 600008, '9876543218', 3, '2012-08-20 14:00:00'),
(9, 'Harris', 'Daniel', '19 Green Street', 600009, '9876543219', 4, '2012-08-25 15:00:00'),
(10, 'Martin', 'Olivia', '27 Church Road', 600010, '9876543220', 5, '2012-09-01 10:30:00'),
(11, 'Thompson', 'James', '33 King Street', 600011, '9876543221', 6, '2012-09-05 12:00:00'),
(12, 'Garcia', 'Ava', '51 Queen Road', 600012, '9876543222', 7, '2012-09-10 13:00:00');

INSERT INTO bookings
(facid, memid, starttime, slots)
VALUES
-- Member 1
(1, 1, '2012-09-18 08:00:00', 2),
(2, 1, '2012-09-18 14:00:00', 2),
(3, 1, '2012-09-19 10:00:00', 3),

-- Member 2
(1, 2, '2012-09-18 09:30:00', 2),
(4, 2, '2012-09-18 16:00:00', 2),
(2, 2, '2012-09-20 11:00:00', 2),

-- Member 3
(3, 3, '2012-09-18 11:00:00', 3),
(1, 3, '2012-09-19 14:30:00', 2),
(4, 3, '2012-09-20 18:00:00', 2),

-- Member 4
(2, 4, '2012-09-18 12:00:00', 2),
(3, 4, '2012-09-19 09:00:00', 3),
(1, 4, '2012-09-20 16:30:00', 2),

-- Member 5
(4, 5, '2012-09-18 10:30:00', 2),
(1, 5, '2012-09-19 13:00:00', 2),
(2, 5, '2012-09-20 17:30:00', 2),

-- Member 6
(3, 6, '2012-09-18 15:00:00', 3),
(2, 6, '2012-09-19 11:30:00', 2),
(4, 6, '2012-09-20 19:00:00', 2),

-- Member 7
(1, 7, '2012-09-18 17:00:00', 2),
(3, 7, '2012-09-19 16:00:00', 3),
(2, 7, '2012-09-20 09:30:00', 2),

-- Member 8
(2, 8, '2012-09-18 18:30:00', 2),
(4, 8, '2012-09-19 14:00:00', 2),
(1, 8, '2012-09-20 12:30:00', 2),

-- Member 9
(3, 9, '2012-09-18 13:30:00', 3),
(1, 9, '2012-09-19 17:30:00', 2),
(4, 9, '2012-09-20 15:00:00', 2),

-- Member 10
(4, 10, '2012-09-18 20:00:00', 2),
(2, 10, '2012-09-19 10:30:00', 2),
(3, 10, '2012-09-20 14:00:00', 3),

-- Member 11
(1, 11, '2012-09-18 16:30:00', 2),
(3, 11, '2012-09-19 12:30:00', 3),
(2, 11, '2012-09-20 18:00:00', 2),

-- Member 12
(2, 12, '2012-09-18 09:00:00', 2),
(4, 12, '2012-09-19 15:30:00', 2),
(1, 12, '2012-09-20 20:00:00', 2);

SELECT * FROM members;
SELECT * FROM facilities;
SELECT * FROM bookings;



-- Question - Retrieve the start times of members' bookings
-- How can you produce a list of the start times for bookings by members named 'David Farrell'?



-- Easy way
SELECT starttime FROM bookings WHERE memid = 28;

-- Day - 2

SELECT b.starttime FROM members m
INNER JOIN bookings b ON m.memid = b.memid
WHERE m.surname = 'Farrell' AND m.firstname = 'David';



SELECT m.memid,m.surname,m.firstname,b.starttime FROM members m
INNER JOIN bookings b ON m.memid = b.memid
WHERE m.surname = 'Farrell' AND m.firstname = 'David';



-- SELECT m.memid,m.surname,m.firstname,b.starttime FROM cd.members m
-- INNER JOIN cd.bookings b ON m.memid = b.memid
-- WHERE m.surname = 'Farrell' AND m.firstname = 'David';



-- 										Day -3 SQL Problem Solving
-- New problem
-- Work out the start times of bookings for tennis courts

/*
Question
How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'? Return a list of start time and facility name pairings, ordered by the time.
Schema reminder ▲
DB schema

Expected Results
start	name
2012-09-21 08:00:00	Tennis Court 1
2012-09-21 08:00:00	Tennis Court 2
2012-09-21 09:30:00	Tennis Court 1
2012-09-21 10:00:00	Tennis Court 2
2012-09-21 11:30:00	Tennis Court 2
2012-09-21 12:00:00	Tennis Court 1
2012-09-21 13:30:00	Tennis Court 1
2012-09-21 14:00:00	Tennis Court 2
2012-09-21 15:30:00	Tennis Court 1
2012-09-21 16:00:00	Tennis Court 2
2012-09-21 17:00:00	Tennis Court 1
2012-09-21 18:00:00	Tennis Court 2

*/


SELECT b.starttime,f.name AS start FROM bookings b
INNER JOIN facilities f ON b.facid = f.facid 
WHERE b.starttime = '2012-09-21';


SELECT * FROM facilities;


SELECT * FROM bookings
WHERE starttime = '2012-09-21';


SELECT b.starttime AS start,f.name FROM bookings b
INNER JOIN facilities f ON b.facid = f.facid;

-- testing query 
SELECT b.starttime,f.name AS start FROM cd.bookings b
INNER JOIN cd.facilities f ON b.facid = f.facid 
WHERE b.starttime = '2012-09-21';
WHERE b.starttime >= '2012-09-21 00:00:00' 
AND b.starttime < '2012-09-22 00:00:00';



-- testing query 
SELECT b.starttime,f.name FROM bookings b
INNER JOIN facilities f ON b.facid = f.facid 
WHERE f.name = 'Tennis Court 1' OR 
f.name = 'Tennis Court 2'
AND b.starttime >= '2012-09-21 00:00:00' 
AND b.starttime < '2012-09-22 00:00:00';



WHERE b.starttime = '2012-09-21 00:00:00' 
AND b.starttime < '2012-09-21 00:00:00';




-- testing query on web
SELECT b.starttime AS start,f.name FROM cd.bookings b
INNER JOIN cd.facilities f ON b.facid = f.facid 
WHERE f.name = 'Tennis Court 1' OR 
f.name = 'Tennis Court 2'
AND b.starttime >= '2012-09-21 00:00:00' 
AND b.starttime < '2012-09-22 00:00:00';



-- Working query on web
SELECT b.starttime AS start,f.name FROM cd.bookings b
INNER JOIN cd.facilities f ON b.facid = f.facid 
WHERE f.name IN ('Tennis Court 1','Tennis Court 2')
AND b.starttime >='2012-09-21' 
AND b.starttime < '2012-09-22';

-- Working query on web
SELECT b.starttime AS start,f.name FROM bookings b
INNER JOIN facilities f ON b.facid = f.facid 
WHERE f.name IN ('Tennis Court 1','Tennis Court 2')
AND b.starttime >='2012-09-21 00:00:00' 
AND b.starttime < '2012-09-22 00:00:00';



-- 								Day - 4 SQL Problem Solving
/*

Produce a list of all members who have recommended another member
Question
How can you output a list of all members who have recommended another member? Ensure that there are no duplicates in the list, and that results are ordered by (surname, firstname).

*/

--testing Query on Local

SELECT DISTINCT m.firstname,m.surname FROM members m 
INNER JOIN members n 
ON n.recommendedby = m.memid
ORDER BY m.surname,m.firstname;


-- Working Query
SELECT DISTINCT m.firstname,m.surname FROM cd.members m 
INNER JOIN cd.members n 
ON n.recommendedby = m.memid
ORDER BY m.surname,m.firstname;






--											 Day - 5 SQL Problem Solving
/*


Produce a list of all members, along with their recommender
Question
How can you output a list of all members, including the individual who recommended them (if any)? Ensure that results are ordered by (surname, firstname).


*/
-- testing query 


SELECT DISTINCT m.firstname,m.surname FROM cd.members m 
INNER JOIN cd.members n 
ON n.recommendedby = m.memid
ORDER BY m.surname,m.firstname;



SELECT DISTINCT m.firstname,m.surname,m.recommendedby FROM cd.members m 
INNER JOIN cd.members n 
ON n.recommendedby = m.memid
ORDER BY m.surname,m.firstname;


--Check 1
SELECT DISTINCT n.firstname,n.surname,m.firstname,m.surname FROM cd.members m 
INNER JOIN cd.members n 
ON n.recommendedby = m.memid
ORDER BY m.surname,m.firstname;


--Local working query
SELECT 
m.firstname AS memfname,
m.surname AS memsname,
r.firstname AS recfname,
r.surname AS recsname
FROM members m 
LEFT JOIN members r 
ON m.recommendedby = r.memid
ORDER BY m.surname,m.firstname;


-- Working Query on Web
SELECT 
m.firstname AS memfname,
m.surname AS memsname,
r.firstname AS recfname,
r.surname AS recsname
FROM cd.members m 
LEFT JOIN cd.members r 
ON m.recommendedby = r.memid
ORDER BY m.surname,m.firstname;




-- 									Day - 6 SQL Problem Solving

/*
Produce a list of all members who have used a tennis court

Question
How can you produce a list of all members who have used a tennis court? Include in your output the name of the court, 
and the name of the member formatted as a single column. 
Ensure no duplicate data, and order by the member name followed by the facility name.
*/


-- working query on web
SELECT DISTINCT 
	CONCAT(m.firstname,' ',surname) AS member,
	f.name AS facility
FROM cd.members m
JOIN cd.bookings b
	ON m.memid = b.memid
JOIN cd.facilities f
	ON b.facid = f.facid
WHERE f.name LIKE 'Tennis Court%'
ORDER BY member,facility;


--working query on local
SELECT DISTINCT 
	CONCAT(m.firstname,' ',surname) AS member,
	f.name AS facility
FROM members m
JOIN bookings b
	ON m.memid = b.memid 
JOIN facilities f
	ON b.facid = f.facid
WHERE f.name LIKE 'Tennis Court%'
ORDER BY member,facility;


-- 									Day - 7 SQL Problem Solving
/*
Produce a list of costly bookings

How can you produce a list of bookings on the day of 2012-09-14 which will cost the member (or guest) more than $30? 
Remember that guests have different costs to members (the listed costs are per half-hour 'slot'), and the guest user is always ID 0. 
Include in your output the name of the facility, the name of the member formatted as a single column, and the cost. 
Order by descending cost, and do not use any subqueries.
*/


-- testing query on web
SELECT CONCAT(surname,' ',firstname) AS member FROM cd.members;

SELECT CONCAT(surname,' ',firstname),memid AS member FROM cd.members;


SELECT CONCAT(m.surname,' ',m.firstname) AS member,f.name AS facility,f.membercost,f.guestcost 
FROM cd.members m
JOIN cd.facilities ON cd.facilities.facid = cd.bookings.facid
JOIN cd.bookings.memid = m.memid;

SELECT CONCAT(m.surname,' ',m.firstname) AS member,f.name AS facility,f.membercost,f.guestcost 
FROM cd.members m
JOIN cd.facilities f ON f.facid = b.facid
JOIN cd.bookingsb ON b.memid = m.memid;

--testing query on web 
SELECT CONCAT(m.firstname,' ',m.surname) AS member,
f.name AS facility,f.membercost,f.guestcost 
FROM cd.members m
JOIN cd.bookings b ON b.memid = m.memid
JOIN cd.facilities f ON f.facid = b.facid;

-- recommend solving it with one SELECT statement, three joins, and CASE
--testing query on local
SELECT CONCAT(m.firstname, ' ',m.surname) AS member,
f.name AS facility,
CASE 
	WHEN m.memid = 0 THEN b.slots * f.guestcost 
	ELSE b.slots * f.membercost
END AS cost 
FROM bookings b
JOIN members m ON m.memid = b.memid
JOIN facilities f ON f.facid = b.facid
WHERE b.starttime >= '2012-09-14'
AND b.starttime < '2012-09-15'
AND(
	(m.memid = 0 AND b.slots * f.guestcost > 30)
	OR
	(m.memid != 0 AND b.slots * f.membercost > 30)
)
ORDER BY cost DESC;

SELECT 

--Working query on web
SELECT CONCAT(m.firstname, ' ',m.surname) AS member,
f.name AS facility,
CASE 
	WHEN m.memid = 0 THEN b.slots * f.guestcost 
	ELSE b.slots * f.membercost
END AS cost 
FROM cd.bookings b
JOIN cd.members m ON m.memid = b.memid
JOIN cd.facilities f ON f.facid = b.facid
WHERE b.starttime >= '2012-09-14'
AND b.starttime < '2012-09-15'
AND(
	(m.memid = 0 AND b.slots * f.guestcost > 30)
	OR
	(m.memid != 0 AND b.slots * f.membercost > 30)
)
ORDER BY cost DESC;


-- 									Day - 8 SQL Problem Solving
/* 
Produce a list of all members, along with their recommender, using no joins.

Question
How can you output a list of all members, including the individual who recommended them (if any), 
without using any joins? Ensure that there are no duplicates in the list, and that each firstname + surname 
pairing is formatted as a column and ordered.

*/

-- Testing query on web
SELECT DISTINCT CONCAT(firstname,' ',surname)AS member FROM cd.members;

SELECT DISTINCT CONCAT(firstname,' ',surname)AS recommender FROM cd.members  WHERE recommendedby = memid;

SELECT DISTINCT CONCAT(firstname,' ',surname)AS member WHERE 
recommender = SELECT DISTINCT CONCAT(firstname,' ',surname)AS recommender FROM cd.members  WHERE recommendedby = memid;



-- working Query in web

SELECT DISTINCT 
	CONCAT(m.firstname,' ',m.surname)AS member,
(
  SELECT CONCAT(n.firstname,' ',n.surname)
  FROM cd.members n
  WHERE n.memid = m.recommendedby) AS recommender
FROM cd.members m ORDER BY member; 


-- working query on local
SELECT DISTINCT 
	CONCAT(m.firstname,' ',m.surname)AS member,
(
  SELECT CONCAT(n.firstname,' ',n.surname)
  FROM members n
  WHERE n.memid = m.recommendedby) AS recommender
FROM members m ORDER BY member; 



-- 												Day - 9 SQL Problem Solving

/*
Produce a list of costly bookings, using a subquery 

Question
The Produce a list of costly bookings exercise contained some messy logic: 
we had to calculate the booking cost in both the WHERE clause and the CASE statement. 
Try to simplify this calculation using subqueries. For reference, the question was:
How can you produce a list of bookings on the day of 2012-09-14 which will cost the member 
(or guest) more than $30? Remember that guests have different costs to members (the listed costs are per half-hour 'slot'),
and the guest user is always ID 0. Include in your output the name of the facility, the name of the member formatted as a single column, 
and the cost. Order by descending cost.

*/


SELECT CONCAT(m.firstname, ' ',m.surname) AS member,
f.name AS facility,
CASE 
	WHEN m.memid = 0 THEN b.slots * f.guestcost 
	ELSE b.slots * f.membercost
END AS cost 
FROM cd.bookings b
JOIN cd.members m ON m.memid = b.memid
JOIN cd.facilities f ON f.facid = b.facid
WHERE b.starttime >= '2012-09-14'
AND b.starttime < '2012-09-15'
AND(
	(m.memid = 0 AND b.slots * f.guestcost > 30)
	OR
	(m.memid != 0 AND b.slots * f.membercost > 30)
)
ORDER BY cost DESC;




						-- Day - 10 SQL Problem Solving
/*

									Insert some data into a table 

Question

The club is adding a new facility - a spa. We need to add it into the facilities table. Use the following values:

facid: 9, Name: 'Spa', membercost: 20, guestcost: 30, initialoutlay: 100000, monthlymaintenance: 800


*/

-- working query on web
INSERT INTO cd.facilities(facid,name,membercost,
	guestcost,initialoutlay,monthlymaintenance)
	VALUES
	(9,'Spa',20,30,100000,800);


--working query on local
INSERT INTO facilities(facid,name,membercost,
	guestcost,initialoutlay,monthlymaintenance)
	VALUES
	(9,'Spa',20,30,100000,800);


SELECT * FROM facilities;

/*

								Insert multiple rows of data into a table
								
Question

In the previous exercise, you learned how to add a facility. Now you're going to add multiple facilities in one command. Use the following values:

facid: 9, Name: 'Spa', membercost: 20, guestcost: 30, initialoutlay: 100000, monthlymaintenance: 800.
facid: 10, Name: 'Squash Court 2', membercost: 3.5, guestcost: 17.5, initialoutlay: 5000, monthlymaintenance: 80.


*/


-- working query on web
INSERT INTO cd.facilities(facid,name,membercost,
	guestcost,initialoutlay,monthlymaintenance)
	VALUES
	(9,'Spa',20,30,100000,800),
	(10,'Squash Court 2',3.5,17.5,5000,80);


SELECT * FROM members;
SELECT * FROM facilities;
SELECT * FROM bookings;




-- 										Day - 11 SQL Problem Solving

/*


Insert calculated data into a table
Question
Let's try adding the spa to the facilities table again. This time, though, we want to automatically generate the value for the next facid, rather than specifying it as a constant. Use the following values for everything else:

Name: 'Spa', membercost: 20, guestcost: 30, initialoutlay: 100000, monthlymaintenance: 800.


*/

--Working query on we

INSERT INTO cd.facilities(
  facid,name,membercost,guestcost,initialoutlay,monthlymaintenance)
	SELECT(SELECT MAX(facid)FROM cd.facilities)+ 1,'Spa',20,30,100000,800;

--Alternate way
INSERT INTO cd.facilities(facid,name,membercost,
	guestcost,initialoutlay,monthlymaintenance)
	VALUES((SELECT MAX(facid) FROM cd.facilities)+1,'Spa',20,30,100000,800);

--local query
INSERT INTO facilities(
  facid,name,membercost,guestcost,initialoutlay,monthlymaintenance)
	SELECT(SELECT MAX(facid)FROM facilities)+ 1,'Spa',20,30,100000,800;

SELECT * FROM facilities;




-- 										Day - 12 SQL Problem Solving

/*


Update some existing data
Question
We made a mistake when entering the data for the second tennis court. 
The initial outlay was 10000 rather than 8000: you need to alter the data to fix the error.

*/


-- working query on web

UPDATE cd.facilities 
SET initialoutlay = 10000 
WHERE name = 'Tennis Court 2';

/*

Update multiple rows and columns at the same time 
Question
We want to increase the price of the tennis courts for both members and guests. 
Update the costs to be 6 for members, and 30 for guests.

*/

-- working query on web
UPDATE cd.facilities  
SET membercost = 6,guestcost = 30
WHERE facid in (0,1);



/*
Update a row based on the contents of another row

Question
We want to alter the price of the second tennis court so that it costs 10% more than the first one. 
Try to do this without using constant values for the prices, so that we can reuse the statement if we want to.

*/

update cd.facilities facs
    set
        membercost = (select membercost * 1.1 from cd.facilities where facid = 0),
        guestcost = (select guestcost * 1.1 from cd.facilities where facid = 0)
    where facs.facid = 1;  

UPDATE cd.facilities 
SET membercost = (SELECT membercost * 1.1 FROM cd.facilities WHERE facid = 0),
	guestcost = (SELECT guestcost * 1.1 FROM cd.facilities WHERE facid = 0)
	WHERE cd.facilities.facid = 1;
	
UPDATE cd.facilities f
SET membercost = (SELECT membercost * 1.1 FROM cd.facilities WHERE facid = 0),
	guestcost = (SELECT guestcost * 1.1 FROM cd.facilities WHERE facid = 0)
	WHERE f.facid = 1;
	


/*

Delete all bookings 
Question
As part of a clearout of our database, we want to delete all bookings from the cd.bookings table. 
How can we accomplish this?

*/
--Working Query
DELETE FROM cd.bookings;


/* 

Delete a member from the cd.members table
Question
We want to remove member 37, who has never made a booking, from our database. How can we achieve that?
*/
--Working Query
DELETE FROM cd.members WHERE memid = 37;

/*

Delete based on a subquery 
Question
In our previous exercises, we deleted a specific member who had never made a booking. 
How can we make that more general, to delete all members who have never made a booking?

*/
--Working Query
DELETE FROM cd.members WHERE memid NOT IN (SELECT DISTINCT(memid) FROM cd.bookings)


-- Aggregates 

/*


Count the number of facilities
Question
For our first foray into aggregates, we're going to stick to something simple. We want to know how many facilities exist - simply produce a total count.


*/
-- Working query 
SELECT COUNT(*) FROM cd.facilities;

/*

Count the number of expensive facilities 
Question
Produce a count of the number of facilities that have a cost to guests of 10 or more.


*/
-- Working query
SELECT COUNT(guestcost) FROM cd.facilities WHERE guestcost >=10;


/*

Count the number of recommendations each member makes. 
Question
Produce a count of the number of recommendations each member has made. Order by member ID.

*/

--Working query

SELECT recommendedby,COUNT(*) FROM cd.members
WHERE recommendedby IS NOT NULL
GROUP BY recommendedby
ORDER BY recommendedby;


/*

List the total slots booked per facility
Question
Produce a list of the total number of slots booked per facility. 
For now, just produce an output table consisting of facility id and slots, sorted by facility id.

*/
-- not working query 
SELECT f.facid,SUM(b.slots) FROM cd.facilities f INNER JOIN cd.bookings b
ON f.facid = b.slots;

--working query 
SELECT facid,SUM(slots)AS total_slots FROM cd.bookings
GROUP BY facid
ORDER BY facid ASC;



/*

List the total slots booked per facility in a given month
Question
Produce a list of the total number of slots booked per facility in the month of September 2012. 
Produce an output table consisting of facility id and slots, sorted by the number of slots.

*/


SELECT * FROM cd.bookings;


--incorrect query
SELECT facid,SUM(slots),starttime FROM cd.bookings
GROUP BY facid,starttime WHERE starttime > 2012-09-0 00:00:00;

--incorrect query 
SELECT facid,SUM(slots),starttime FROM cd.bookings
GROUP BY facid,starttime
ORDER BY stattime
WHERE starttime > 2012-09-00;
--incorrect query 
SELECT facid,SUM(slots)FROM cd.bookings
GROUP BY facid 
WHERE starttime >;
--incorrect query 
SELECT starttime FROM cd.bookings
WHERE starttime > '2012-08-31 00:00:00';
--incorrect query 
SELECT starttime FROM cd.bookings
WHERE starttime  >'2012-08-31 00:00:00' OR starttime <'2012-10-01 00:00:00';
--incorrect query 
SELECT starttime FROM cd.bookings
WHERE starttime  >'2012-08-31 24:00:00'  AND starttime <'2012-10-01 00:00:00';


--Working query
SELECT facid,SUM(slots)AS total_slots FROM cd.bookings
WHERE starttime  >='2012-09-01'  AND starttime <'2012-10-01'
GROUP BY facid ORDER BY sum(slots);

