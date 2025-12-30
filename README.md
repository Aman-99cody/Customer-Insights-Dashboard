# Customer-Insights-Dashboard
Provides User's insights of their purchasing and subscription trends based on various factors using PowerBi Dashboard

# 📊 Customer Insights Dashboard

End-to-End Data Analytics Project | Python • SQL • Power BI

## 📌 Project Overview

This project analyzes customer shopping behavior to derive actionable business insights related to revenue, customer segmentation, subscriptions, and product performance.
It follows a **structured, real-world analytics workflow** where data is first cleaned using Python, analyzed using SQL, and finally visualized using Power BI.

---

## 🔄 Project Workflow

1. Data Cleaning & Preparation (Python – Jupyter Notebook)
2. Exploratory & Aggregation Analysis (SQL)
3. Dashboarding & KPI Creation (Power BI with DAX)

This approach mirrors how data analytics is performed in production environments.

---

## 🧹 Data Cleaning & Preparation (Python)

Data cleaning was performed using Python in Jupyter Notebook, focusing on:

* Handling missing and inconsistent values
* Standardizing column names and formats
* Validating data types
* Preparing clean, analysis-ready datasets

The cleaned dataset was then exported for SQL-based analysis.

---

## 🔍 Data Analysis (SQL)

SQL was used to perform exploratory analysis and validate key trends before dashboard creation.

### Key SQL Analyses Performed

* Net Revenue by Gender
* Average Review Rating by Product
* Subscription vs Non-Subscription Revenue & Customer Count
* Top Items by Category using Window Functions (RANK)

SQL outputs were used to **cross-verify KPIs** later implemented in Power BI.

---

## 📈 Dashboard & KPIs (Power BI)

An interactive Customer Insights Dashboard was developed in Power BI.

### 🔑 KPI Creation (DAX)

All KPIs were created using **DAX measures in a dedicated Measures table**, following Power BI best practices:

* Total Customers
* Total Revenue
* Average Purchase Value
* Average Review Rating
* Number of Frequent Subscribers
* Subscription rate
* Number of Subscribers

### 📊 Visuals Included

* Customers by Product Category
* Revenue by Customer Segment
* Subscription Status Distribution
* Most Frequent Customers by Category
* Number of Subscribers by Category

### 🎛️ Interactive Filters

* Season
* Gender
* Payment Method
* Subscription Status
* Shipping Type

---

## 💡 Key Insights

* Loyal customers generate the majority of total revenue.
* Clothing and Accessories are the highest-performing categories.
* Non-subscribers form the largest customer base, though average spend is similar across groups.
* A critical insight shows that none of the subscribed customers are female, highlighting a significant untapped segment.

---

## 📌 Business Recommendations

* Introduce targeted campaigns and subscription policies to attract female customers.
* Design personalized offers to improve subscription adoption.
* Strengthen loyalty programs for high-value customer segments.
* Promote high-rated products to maximize customer satisfaction and retention.

---

## 🛠️ Tools & Technologies

* Python (Jupyter Notebook) – Data cleaning & preprocessing
* SQL – Exploratory analysis & KPI validation
* Power BI – Data modeling, DAX measures & dashboard visualization
---

## 🚀 Outcome

This project demonstrates:

* End-to-end analytics workflow
* Strong SQL querying and window functions
* Clean KPI design using DAX
* Business-driven storytelling through dashboards

---


