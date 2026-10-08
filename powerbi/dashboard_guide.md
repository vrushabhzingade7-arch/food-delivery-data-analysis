# Power BI Dashboard Guide

Import `data/food_delivery_orders.csv`.

Create these DAX measures:
```DAX
Total Orders = DISTINCTCOUNT(food_delivery_orders[Order_ID])
Net Order Value = SUM(food_delivery_orders[Net_Value])
Avg Delivery Time = AVERAGE(food_delivery_orders[Delivery_Time_Min])
Avg Rating = AVERAGE(food_delivery_orders[Customer_Rating])
Cancellation Rate % = AVERAGE(food_delivery_orders[Cancelled_Flag])
```

Dashboard layout:
- KPI cards: Total Orders, Net Order Value, Avg Delivery Time, Avg Rating, Cancellation Rate
- Orders by City
- Net Order Value by Cuisine
- Cancellation Rate by City
- Monthly Orders trend
- Average Rating by Delivery Time Band
- Slicers: City, Cuisine, Payment Method, Order Status, Order Date
