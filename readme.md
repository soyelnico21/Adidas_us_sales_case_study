# 👟 Adidas US Commercial Performance & Channel Efficiency Analysis

## 📌 Executive Summary

This project presents an end-to-end data analytics case study evaluating **Adidas US sales performance (2020–2021)** across product categories, consumer demographics, regional distribution, and sales channels.

The main objective is to identify financial growth drivers, analyze operating margin efficiency across retail methods (Online, In-Store, Outlet), and provide actionable strategic recommendations for retail distributors.

## 📊 Key Performance Indicators (KPIs)

* **Total Sales Revenue:** \$899.90M

* **Total Operating Profit:** \$332.14M

* **Operating Margin:** 36.91%

* **Total Units Sold:** 2.48M

* **Average Selling Price (ASP):** \$363.03

## 🛠️ Data Pipeline & Tools Used

1. **Microsoft Excel:** Initial inspection, structural integrity verification, and data sanity checks.

2. **SQL (PostgreSQL/MySQL):** Data cleaning, null handling, string standardization, and programmatic KPI aggregations.

3. **Tableau Public:** Interactive executive dashboard design, category margin benchmarking, and channel efficiency visualization.

## 📁 Repository & Directory Structure

```
adidas-case-study/
│
├── README.md                      <-- Project Overview and Documentation
│
├── 1. raw data/
│   └── 1.1 adidas_raw_data.xlsx    <-- Unaltered raw dataset from Kaggle (9,648 rows)
│
├── 2. processed data/
│   └── 2.1 adidas_clean_data.xlsx  <-- Standardized dataset ready for database ingestion
│
├── 3. sql queries/
│   └── 3.1 analysis_queries.sql    <-- SQL script with data transformation and aggregation logic
│
└── 4. dashboard y resultados/
    ├── 4.1 adidas_dashboard.twbx   <-- Interactive Tableau Packaged Workbook
    ├── 4.2 adidas_executive_report.pdf <-- Executive PDF Report with business strategy
    ├── 4.3 adidas_presentation.pdf <-- Pitch deck for stakeholder presentation
    └── *.csv                       <-- Exported query outputs for visualization inputs

```

## 💡 Key Strategic Recommendations

* **Capitalize on E-Commerce Efficiency:** Expand direct-to-consumer (DTC) digital capabilities to capture more market share in the highest-margin channel (**Online: 38.99% margin**).

* **Double Down on High-Performing Retailers:** Deepen partnership with **West Gear** (\$242.96M) and **Foot Locker** (\$220.09M), which together represent **>51%** of total revenue.

* **Segment Cross-Selling Strategy:** Leverage **Men's Street Footwear** strength (\$208.83M) to cross-sell apparel, and bundle **Women's Apparel** (\$179.04M) with women's athletic footwear.

## 👤 Author

**Nicolas Esteban Rodriguez Alfonso**

*Data Analyst / Business Intelligence Specialist*