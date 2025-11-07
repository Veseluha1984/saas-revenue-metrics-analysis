SaaS Revenue Metrics Dashboard (SQL + Tableau)

End-to-end analysis of monetization, user retention, churn, and MRR dynamics for a subscription-based digital product.
This project demonstrates a complete analytical workflow — from raw transactional data in PostgreSQL to an interactive Tableau dashboard.

<p align="center"> <img src="tableau/dashboard_screenshots/sample.png" width="90%"> </p>
🚀 Project Overview

This project provides an end-to-end revenue analytics pipeline that helps understand:

How user payments evolve over time

What drives monthly recurring revenue (MRR)

How churn affects revenue

Which user segments are most profitable or high-risk

It includes:

✅ SQL transformation logic (PostgreSQL)
✅ 15+ revenue & user analytics metrics
✅ Interactive Tableau dashboard
✅ Segmentation by age, language, and payment month
✅ Revenue Change Factor breakdown (New, Expansion, Contraction, Churn)

🔗 Live Dashboard (Tableau Public):
https://public.tableau.com/views/Final_Project_17624212619970/RevenueOverview

🧩 Tech Stack

PostgreSQL

SQL Window Functions

Tableau Public

LOD Expressions

Time-series analysis

📁 Repository Structure
.
├── sql/
│   └── project2_revenue_metrics.sql     # Final SQL script (clean dataset generation)
│
├── tableau/
│   └── dashboard_screenshots/
│       └── sample.png                    # Main dashboard preview
│
└── README.md

📊 Key Metrics Included
Revenue Metrics

Monthly Recurring Revenue (MRR)

New MRR

Expansion MRR

Contraction MRR

Churned Revenue

Revenue Churn Rate

User Metrics

Paid Users

New Paid Users

Churned Users

Returned Users

Monetization

ARPPU (Average Revenue Per Paid User)

Lifetime & Value

Customer Lifetime (LT)

Lifetime Value (LTV)

Segmentation

By age group

By language

By payment month

🔍 Insights & Findings

MRR shows stable month-over-month growth, especially in Q3–Q4

Expansion MRR strongly drives positive net MRR

Age 18–24 (UK) → most profitable (highest ARPPU)

Age 25–34 (UK) → highest churn-risk segment

Clear negative correlation between ARPPU and Churn Rate

Returned users provide meaningful incremental revenue in multiple months

▶️ How to Reproduce

Clone the repository

Open /sql/project2_revenue_metrics.sql in any SQL editor

Connect to PostgreSQL

Execute the script to generate the clean analytical dataset

Load the dataset into Tableau

Explore the dashboard locally or via Tableau Public

👤 Author

Yauheni Vesialukha — Data Analyst
Revenue Analytics • SQL • Tableau
📍 Switzerland

📧 yauhenivesialukha@icloud.com