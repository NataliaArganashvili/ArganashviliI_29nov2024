select product_name from Products
select p.product_id, p.product_name, p.price from Products AS p JOIN Nutritional information AS i ON p.product_id=i.product_id WHERE fiber > 5
select p.product_name from Products AS p JOIN Nutritional information AS i WHERE p.product_id=i.product_id ORDER BY i.protein DESC LIMIT 1
select c.category_id, SUM(p.calories) AS total_calories from Categories AS c JOIN Products AS p ON p.category_id=c.category_id JOIN Nutritional information AS n ON p.product_id=n.product_id WHERE n.fat > 0 GROUP BY c.category_id
select c.category_name, AVG(p.price) AS average_price from Categories AS c JOIN Products AS p ON c.category_id=p.category_id GROUP BY c.category_name