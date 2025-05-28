# 🛍️ Retail Data Warehouse ETL with Oracle PL/SQL

This project simulates a real-world **retail data warehouse ETL pipeline** using only **Oracle PL/SQL**, mimicking the workflow of tools like **Oracle Data Integrator (ODI)**. It is designed to demonstrate enterprise-grade ETL logic using **staging**, **dimensional modeling**, and **fact tables**, all backed by robust error logging.

---

## 🧠 Use Case

A retail chain collects transactional data from multiple stores. The goal is to:
- Track customer purchases
- Analyze product category performance
- Break down sales by date, region, and customer demographics

---

## 🏗️ Schema Overview

The project includes:
- `staging_sales` – Raw source data
- `dim_customers` – Customer info
- `dim_products` – Product catalog
- `dim_time` – Date breakdown
- `fact_sales` – Fact table for sales
- `error_log` – Captures errors during ETL

---

## 🧱 Folder Structure

```bash
retail-dwh-etl-plsql/
├── sql/
│   ├── ddl/              # Table creation scripts
│   ├── dml/              # Sample data for staging
│   ├── etl/              # ETL procedure
│   └── run_etl_pipeline.sql  # Master script to run everything
