-- CREATE TABLE IF NOT EXISTS Salesman(

-- Salesman_id TEXT PRIMARY KEY,

-- name TEXT,

-- city TEXT,

-- Comission TEXT

-- );

-- INSERT INTO Salesman(Salesman_id,name,city,Comission)

-- VALUES

-- ("5001","James Hoog","New York","0.15"),

-- ("5002","Nail Knite","Paris","0.13"),

-- ("5005","Pit Alex","London","0.11"),

-- ("5006","Mc Lyon","Paris","0.14"),

-- ("5007","Paul Adam","Rome","0.13"),

-- ("5003","Lauson Hen","San Jose","0.12");

-- CREATE TABLE IF NOT EXISTS Customer(

-- customer_id TEXT,

-- cust_name TEXT PRIMARY KEY,

-- city TEXT,

-- grade TEXT,

-- Salesman_id TEXT

-- );

-- INSERT INTO Customer(customer_id,cust_name,city,grade,Salesman_id)

-- VALUES

-- ("3002","nick rimando","New York","100","5001"),

-- ("3007","brad davis","New York","200","5001"),

-- ("3005","graham zusi","California","200","5002"),

-- ("3008","julian green","London","300","5002"),

-- ("3004","fabian johnson","Paris","300","5006"),

-- ("3009","geoff cameron","Berlin","100","5003"),

-- ("3003","jozy altidor","Moscow","200","5007"),

-- ("3001","brad guzan","London","","5005");

-- CREATE TABLE IF NOT EXISTS Orders(

-- ord_no TEXT PRIMARY KEY,

-- purch_amt TEXT,

-- ord_date TEXT,

-- customer_id TEXT,

-- Salesman_id TEXT

-- );

-- INSERT INTO Orders(ord_no,purch_amt,ord_date,customer_id,Salesman_id)

-- VALUES

-- ("70001","150.5","2012-10-05","3005","5002"),

-- ("70009","270.65","2012-09-10","3001","5001"),

-- ("70002","65.26","2012-10-05","3002","5003"),

-- ("70004","110.5","2012-08-17","3009","5007"),

-- ("70007","948.5","2012-09-10","3005","5005"),

-- ("70005","2400.6","2012-07-27","3007","5006");

-- Select * from Salesman;

-- Select * from Customer;

-- Select * from Orders;

-- SELECT customer.cust_name, salesman.name, salesman.city
-- FROM salesman
-- JOIN customer ON customer.city = salesman.city;

-- SELECT customer.cust_name, salesman.name
-- FROM customer
-- JOIN salesman ON customer.salesman_id = salesman.salesman_id;

-- SELECT customer.cust_name, salesman.name, salesman.city, customer.city, orders.customer_id, orders.Salesman_id
-- FROM orders
-- JOIN customer ON customer.customer_id = orders.customer_id
-- JOIN salesman ON salesman.salesman_id = orders.salesman_id
-- WHERE customer.city <> salesman.city

-- SELECT orders.ord_no, customer.cust_name FROM orders
-- JOIN customer ON customer.customer_id = orders.customer_id;



SELECT *

FROM Customer

JOIN Orders ON Customer.customer_id = Orders.customer_id

WHERE Orders.ord_date = '2012-10-05';