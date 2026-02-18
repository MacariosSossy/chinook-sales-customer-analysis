Project Overview

This project analyzes sales performance, customer behavior, and product trends using the Chinook music store dataset. The analysis was conducted using SQL (SQLite) to identify revenue drivers, customer lifecycle patterns, and opportunities for business growth.

The goal was to simulate a real-world data analyst workflow: querying transactional data, generating insights, and translating findings into business recommendations.

Tools Used

SQL (SQLite)

DB Browser / SQLiteOnline

GitHub for documentation and version control

Business Questions Explored

How has revenue changed over time?

Is revenue driven by new or returning customers?

Which products, artists, and genres generate the most revenue?

What customer behavior patterns influence sales?

What risks and opportunities exist for business growth?

Key Insights
Revenue Trends

Revenue remains relatively stable over time with short-term volatility. Monthly fluctuations suggest seasonal purchasing behavior rather than consistent linear growth.

Customer Behavior

Returning customers drive the majority of monthly activity after the initial acquisition period, indicating strong customer loyalty and retention.

Product Performance

Revenue is distributed across many tracks, reflecting a long-tail sales model rather than reliance on a few blockbuster products.

Artist Impact

A small group of artists contributes a disproportionate share of revenue, indicating purchasing decisions are influenced by artist popularity.

Genre Trends

Revenue is heavily concentrated in a few genres, with Rock leading significantly, followed by Latin and Metal.

Business Risk

Declining new customer acquisition combined with reliance on repeat buyers could limit long-term growth and create dependency on an existing customer base.

Opportunity

Strong repeat purchasing behavior suggests an opportunity to increase customer lifetime value through retention strategies, personalized recommendations, and targeted promotions.

SQL Techniques Used

Aggregations (SUM, AVG, COUNT)

GROUP BY analysis

Joins across multiple tables

CTEs (Common Table Expressions)

Time-series analysis using strftime()

Customer lifecycle modeling

Dataset

Chinook Database — a sample digital media store dataset containing:

invoices

customers

tracks

artists

genres

sales transactions

Author
Macarios Sossy
Aspiring Data Analyst | Python | SQL | Power BI

Transitioning from U.S. Army Signal Corps into analytics & fintech.
