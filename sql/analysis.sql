-- Food Delivery Analysis
-- Import data/food_delivery_orders.csv as food_delivery_orders

SELECT COUNT(DISTINCT Order_ID) AS total_orders,
       ROUND(SUM(Net_Value),2) AS net_value,
       ROUND(AVG(Delivery_Time_Min),2) AS avg_delivery_minutes,
       ROUND(AVG(Customer_Rating),2) AS avg_rating,
       ROUND(AVG(Cancelled_Flag)*100,2) AS cancellation_rate_pct
FROM food_delivery_orders;

SELECT City, COUNT(*) AS orders,
       ROUND(AVG(Delivery_Time_Min),2) AS avg_delivery_minutes,
       ROUND(AVG(Customer_Rating),2) AS avg_rating,
       ROUND(AVG(Cancelled_Flag)*100,2) AS cancellation_rate_pct
FROM food_delivery_orders
GROUP BY City ORDER BY orders DESC;

SELECT Cuisine, COUNT(*) AS orders,
       ROUND(SUM(Net_Value),2) AS net_value,
       ROUND(AVG(Customer_Rating),2) AS avg_rating
FROM food_delivery_orders
GROUP BY Cuisine ORDER BY net_value DESC;

SELECT City, COUNT(*) AS total_orders,
       SUM(Cancelled_Flag) AS cancelled_orders,
       ROUND(AVG(Cancelled_Flag)*100,2) AS cancellation_rate_pct
FROM food_delivery_orders
GROUP BY City
ORDER BY cancellation_rate_pct DESC;

SELECT
 CASE WHEN Delivery_Time_Min <= 30 THEN '0-30 min'
      WHEN Delivery_Time_Min <= 45 THEN '31-45 min'
      WHEN Delivery_Time_Min <= 60 THEN '46-60 min'
      ELSE '60+ min' END AS delivery_band,
 COUNT(*) AS orders,
 ROUND(AVG(Customer_Rating),2) AS avg_rating
FROM food_delivery_orders
GROUP BY delivery_band ORDER BY orders DESC;

WITH city_value AS (
 SELECT City, SUM(Net_Value) AS net_value
 FROM food_delivery_orders GROUP BY City
)
SELECT City, ROUND(net_value,2) AS net_value,
       RANK() OVER (ORDER BY net_value DESC) AS city_rank
FROM city_value ORDER BY city_rank;
