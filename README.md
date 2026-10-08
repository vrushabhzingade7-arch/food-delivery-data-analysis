# Food Delivery Data Analysis

## Overview

An end-to-end data analytics project analyzing 10,000 food-delivery orders to understand order volume, cancellations, delivery performance, customer ratings, payment methods, discounts, and order value.

The project demonstrates a complete analytics workflow from data preparation and exploratory analysis to SQL analysis, Excel validation, and an interactive Power BI dashboard.

## Business Questions

- Which cities generate the highest number of orders?
- Which cuisines generate the highest net order value?
- Which cities have higher cancellation rates?
- How does delivery time relate to customer ratings?
- What trends can be identified in monthly order performance?
- Which payment methods and order characteristics are most common?

## Tools & Technologies

- **Python:** Pandas, NumPy, Matplotlib
- **SQL:** Aggregations, GROUP BY, CASE statements, CTEs, Window Functions
- **Excel:** Data analysis and validation
- **Power BI:** Dashboard, DAX measures, KPIs, slicers and visualizations

## Workflow

Raw Data  
↓  
Data Quality Checks  
↓  
Python Exploratory Data Analysis  
↓  
SQL Analysis  
↓  
Excel Validation  
↓  
Power BI Dashboard  
↓  
Business Insights

## Dashboard

The Power BI dashboard includes:

- Total Orders
- Net Order Value
- Average Delivery Time
- Average Customer Rating
- Cancellation Rate
- Orders by City
- Net Order Value by Cuisine
- Cancellation Rate by City
- Monthly Order Trend
- Average Rating by Delivery Time

## Repository Structure

```text
data/
└── food_delivery_orders.csv

sql/
└── analysis.sql

python/
└── analysis.ipynb

excel/
└── analysis.xlsx

powerbi/
├── dashboard_guide.md
└── Food_Delivery_Performance_Dashboard.pbix

screenshots/
└── food_delivery_dashboard.png