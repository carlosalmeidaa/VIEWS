CREATE VIEW VIEW0 AS select 
concat(contactfirstname, " " ,contactlastname) , 
ordernumber
from customers
left join orders on (customers.customerNumber = orders.customerNumber);

CREATE VIEW VIEW1 AS select 
productName, 
orders.ordernumber 
from orders
right join orderDetails on (orders.orderNumber = orderDetails.OrderNumber )
right join products on (products.ProductCode = orderdetails.productCode);

CREATE VIEW VIEW2 AS select 
E1.employeeNumber, 
E2.reportsTo 
from employees as E1
left join employees as E2 on (E1.employeeNumber = E2.reportsTo) limit 20;

CREATE VIEW VIEW3 AS SELECT 
ProductName, 
Orders.OrderNumber, 
Customers.CustomerNumber
FROM
    Products
    LEFT JOIN orderDetails ON (Products.ProductCode = orderDetails.ProductCode)
    LEFT JOIN orders ON (orderDetails.OrderNumber = orders.OrderNumber)
    LEFT JOIN Customers ON (orders.CustomerNumber = Customers.CustomerNumber);
    
CREATE VIEW VIEW4 AS select employeeNumber, 
customers.customerNumber, 
payments.amount, 
employees.jobTitle 
from employees
right join customers on (employees.employeeNumber = customers.salesRepEmployeeNumber)
left join payments on (payments.customernumber = customers.customernumber);

CREATE VIEW VIEW5 AS select 
avg(orderDetails.quantityOrdered *orderDetails.priceEach) ,
max(orderDetails.quantityOrdered * orderDetails.priceEach) ,
min(orderDetails.quantityOrdered * orderDetails.priceEach),
offices.city 
from offices
inner join employees on (offices.officeCode = employees.officeCode)
inner join customers on (customers.salesRepEmployeeNumber = employees.employeenumber)
inner join orders on (customers.customerNumber = orders.customerNumber)
inner join orderdetails on (orders.orderNumber = orderdetails.ordernumber);

CREATE VIEW VIEW6 AS select avg(orderDetails.quantityOrdered *orderDetails.priceEach),
max(orderDetails.quantityOrdered * orderDetails.priceEach),
min(orderDetails.quantityOrdered * orderDetails.priceEach),
offices.city
from offices
inner join employees on (offices.officeCode = employees.officeCode)
inner join customers on (customers.salesRepEmployeeNumber = employees.employeenumber)
inner join orders on (customers.customerNumber = orders.customerNumber)
inner join orderdetails on (orders.orderNumber = orderdetails.ordernumber);

CREATE VIEW VIEW7 AS select 
sum(orderDetails.quantityOrdered * orderDetails.priceEach), 
products.productName,
 year(orders.orderDate)
from products
inner join orderDetails on (products.productCode = orderDetails.productCode)
inner join orders on (orders.orderNumber = orderDetails.orderNumber);

CREATE VIEW VIEW8 AS select sum(orderDetails.quantityOrdered * orderDetails.priceEach),
 products.productName,
 year(orders.orderDate)
from products 
inner join orderDetails on (products.productCode = orderDetails.productCode)
inner join orders on (orders.orderNumber = orderDetails.orderNumber);


