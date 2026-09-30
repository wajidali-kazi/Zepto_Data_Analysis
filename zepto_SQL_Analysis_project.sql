drop table if exists zepto;

create table zepto(
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfstock BOOLEAN,
quantity INTEGER
);


--Data Exploretion

--count of rows
select count(*) from zepto;


-- sameple data 
select * from zepto
limit 10;

--null values
select * from zepto
where 
name is null
or
category is null
or
mrp is null
or
discountpercent is null
or
availablequantity is null
or
discountedsellingprice is null
or
weightingms is null
or
outofstock is null
or
quantity is null;

-- Different product categories
select distinct category
from zepto
order by category;


--products in stock vs out of stock
select outofstock, count(sku_id)
FROM zepto
group by outofstock;


--product names present multiple times
select name, count(sku_id) as "Number of SKUs"
from zepto
group by name
having count(sku_id) > 1
order by count(sku_id) Desc;

--data cleaning
-- peoducts with price = 0
select * from zepto
where mrp = 0 or discountedsellingprice =0;

delete from zepto
where mrp = 0;

--convert paise to rupees
update zepto
set mrp = mrp/100.0,
discountedsellingprice = discountedsellingprice/100.0;

select mrp , discountedsellingprice from zepto
limit 10;

--Q1. find the top 10 best-value products based on the discount percentage.
select distinct name, mrp, discountpercent
from zepto
order by discountpercent desc
limit 10;

--Q2. What are the Products with High MRP but out of stock?
select distinct name, mrp
from zepto
where outofstock = TRUE and mrp > 300
Order by mrp desc;

--Q3. Calculate Estimated Renenue For each category?
select category,
sum(discountedSellingPrice * availablequantity) as total_revenue
from zepto
group by category
order by total_revenue;

--Q4. Find all products where MRP is greater than 500 and discount is less than 10%.
SELECT distinct name, mrp, discountpercent
from zepto
where mrp > 500 and discountpercent < 10
order by mrp desc, discountpercent desc;

--Q5. Identify the top 5 categories offering the highest average discount percentage.
select category,
ROUND(avg(discountpercent),2) as average_discount
from zepto
group by category
order by average_discount desc
limit 5;

--Q6. Find the price per gram for products above 100g and sort by best value.
Select distinct name, weightingms, discountedsellingprice,
 ROUND(discountedsellingprice/weightingms,2) AS price_per_gram
 from zepto
 where weightingms >= 100
 order by price_per_gram;

 --Q7. Group the products into category like low, medium, bulk.
 SELECT distinct name, weightingms,
 case
 	when weightingms < 1000 then 'Low'
	when weightingms < 5000 then 'mediem'
	else 'bulk'
	end as weight_catagory
 from zepto;

--Q8. What is the total inventory weight per Category
SELECT category,
Sum(weightingms * availablequantity) AS total_weight
from zepto
group by category
order by total_weight;



