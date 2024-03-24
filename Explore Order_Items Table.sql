-- OBJECTIVE 2: EXPLORE THE ORDERS_DETAIL TABLE

-- 1. View the order_details table.
select * from order_details;

-- 2. What is the date range of the table?
select min(order_date),max(order_date) from order_details;

-- 3. How many orders were made within this date range?
select COUNT(distinct order_id),min(order_date),max(order_date)  FROM order_details;

-- 4. How many items were ordered within this date range?
select COUNT(*),min(order_date),max(order_date)  FROM order_details;

-- 5. Which orders had the most number of items?
SELECT order_id,count(item_id) as num_items
FROM order_details
group by order_id
order by num_items desc;

-- 6. How many orders more than 12 items?
select count(*) from

(SELECT order_id,count(item_id) as num_items
FROM order_details
group by order_id
having num_items > 12) as num_orders;
