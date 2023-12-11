/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT products.Name, categories.Name FROM products 
 INNER JOIN categories ON categories.CategoryID = products.ProductID 
 WHERE categories.Name = 'Computers';
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT P.Name, P.Price, R.Rating 
 FROM products AS P INNER JOIN reviews AS R 
 ON R.ProductID = P.ProductID WHERE R.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT E.FirstName, E.LastName, SUM(S.Quantity) AS Sold FROM sales as S
INNER JOIN employees as E ON E.EmployeeID = S.EmployeeID
GROUP BY E.EmployeeID ORDER BY Sold DESC; /*employee will be frst on this list

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT departments.Name, categories.Name FROM departments
INNER JOIN categories ON categories.DepartmentID = departments.DepartmentID
WHERE categories.Name = 'Appliances' OR categories.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT products.Name, SUM(sales.Quantity), SUM(sales.Quantity * sales.PricePerUnit) FROM products
INNER JOIN sales on sales.ProductID = products.ProductID
WHERE product.Name = 'Eagles: Hotel California';

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT products.Name, reviews.Reviewer, MIN(reviews.Rating), reviews.Comment FROM products
INNER JOIN reviews ON reviews.ProductID = products.ProductID
WHERE product.Name = 'Visio TV';

-- ------------------------------------------ Extra - May be difficult ----- Ehh, another time 
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */