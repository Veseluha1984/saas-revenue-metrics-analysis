# SaaS Revenue Metrics Dashboard (SQL + Tableau)

[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?logo=postgresql&logoColor=white)]()
[![SQL](https://img.shields.io/badge/SQL-Expert-blue)]()
[![Tableau](https://img.shields.io/badge/Tableau-Public-orange?logo=tableau&logoColor=white)]()
[![Analytics](https://img.shields.io/badge/Data%20Analytics-Business%20Intelligence-brightgreen)]()

End-to-end analysis of subscription revenue, monetization, churn, and user behavior.  
This project demonstrates a complete analytics workflow — from raw PostgreSQL data to an interactive Tableau dashboard.

<p align="center">
  <img src="tableau/dashboard_screenshots/sample.png" width="90%">
</p>

---

## 🚀 Project Overview

This project delivers a modern and actionable revenue analytics system that helps SaaS teams understand:

- MRR (Monthly Recurring Revenue) dynamics  
- Churn impact on revenue stability  
- User behavior across segments  
- Monetization efficiency  
- Revenue expansion & contraction flows  

It includes:

✅ Advanced SQL transformation logic  
✅ 15+ SaaS revenue & user metrics  
✅ Interactive, multi-level Tableau dashboard  
✅ Segmentation by age, language, and payment month  
✅ Clear breakdown of revenue change factors  

🔗 **Live Dashboard (Tableau Public):**  
https://public.tableau.com/views/Final_Project_17624212619970/RevenueOverview

---

## 🧩 Tech Stack

- **PostgreSQL** — dataset construction & transformation  
- **SQL Window Functions** — lag(), lead(), dense_rank(), rolling metrics  
- **Tableau Public** — interactive BI dashboards  
- **LOD Expressions** — FIXED / INCLUDE / EXCLUDE  
- **Time-Series & Segmentation Analysis**  

---

## 📁 Repository Structure

.
├── sql/
│   └── project2_revenue_metrics.sql
│
├── tableau/
│   └── dashboard_screenshots/
│       └── sample.png
│
└── README.md

---

## 📊 Key Metrics Included

### 🔵 Revenue Metrics
- Monthly Recurring Revenue (MRR)
- New MRR
- Expansion MRR
- Contraction MRR
- Churned Revenue
- Revenue Churn Rate

### 🟠 User Metrics
- Paid Users  
- New Paid Users  
- Returned Users  
- Churned Users  

### 🟢 Monetization
- ARPPU (Average Revenue Per Paid User)

### 🟣 Lifetime & Value
- LT (Customer Lifetime)  
- LTV (Customer Lifetime Value)  

### 🟡 Segmentation
- Age group  
- Language  
- Payment month  

---

## 🔍 Insights & Findings

### ✅ Revenue Growth
- MRR grows steadily month-over-month, especially in Q3–Q4  
- Expansion MRR is a major positive contributor  

### ✅ Monetization Highlights
- Age **18–24 (UK)** → highest ARPPU (most profitable segment)  
- Returned users provide meaningful incremental revenue  
- Monetization differs significantly by language group  

### ✅ Churn Analysis
- Age **25–34 (UK)** has the highest churn rate  
- Strong negative correlation between ARPPU and churn  

### ✅ Behavioral Patterns
- Revenue stability improves when **Expansion > Contraction + Churn**  
- Some segments maintain high MRR despite smaller user bases  
- LTV decreases as churn increases  

---

## 🏗 SQL Workflow (Architecture Overview)

Dataset is built using a layered SQL approach:

### 1️⃣ Base Layer
Aggregates transactional payments:
- monthly revenue  
- first-payment month per user  
- prev/next revenue values (window functions)  

### 2️⃣ User Dimension Layer
Stable attributes via:
MAX(language), MAX(age), MIN(first_payment_month)

### 3️⃣ Time Grid Layer
Generated using:
generate_series('2022-03-01', '2022-12-01', '1 month')

### 4️⃣ Revenue Movement Layer
Calculates:
- New revenue  
- Expansion  
- Contraction  
- Churn  

### 5️⃣ Final Dataset
A clean, reusable dataset for Tableau.

✅ Supports segmentation, churn modeling, MRR analytics, LTV evaluation.

---

## ▶️ How to Reproduce

1. Clone this repository  
2. Open `sql/project2_revenue_metrics.sql`  
3. Connect to PostgreSQL  
4. Run the script (dataset will be created automatically)  
5. Load the output into Tableau  
6. Explore the interactive dashboard  

---

## 🧭 Future Improvements

- Cohort retention analysis  
- Forecasting (Prophet / exponential smoothing)  
- Revenue anomaly detection  
- LTV by segment (EN / RU / UK)  
- AI-based churn prediction  
- Multi-dashboard navigation in Tableau  

---

## 👤 Author

**Yauheni Vesialukha** — Data Analyst  
Revenue Analytics • SQL • Tableau  
📍 Switzerland  

📧 yauhenivesialukha@icloud.com
