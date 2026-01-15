
# 📊 Customer Segmentation & Revenue Analysis

**End-to-End Data Analytics Project (SQL · Python · Power BI)**

---

## 📌 Project Overview

This project analyzes **customer-level revenue concentration and retention risk** using RFM (Recency, Frequency, Monetary) segmentation.
The goal is to move beyond aggregate sales metrics and answer a more strategic question:

> **Which customers actually drive revenue, and where should retention efforts be focused to protect future revenue?**

Unlike territory or seller-based analysis, this project focuses on **customer value distribution and lifecycle-based decision-making**, enabling targeted retention and marketing strategies.

---

## 🎯 Business Problem

Many businesses apply uniform marketing and retention strategies across all customers, resulting in inefficient spend and missed revenue opportunities.

This project addresses the following business questions:

* Which customer segments contribute the majority of revenue?
* How concentrated is revenue among high-value customers?
* Which historically valuable customers show signs of churn risk?
* Why targeted retention delivers higher ROI than broad acquisition?

---

## 🗂️ Dataset

* **Source:** Online Retail Transactional Dataset
* **Type:** Historical customer-level purchase transactions
* **Granularity:** Individual order lines aggregated to customer level
* **Key Challenges:**

  * Returns and negative quantities
  * Skewed revenue distribution
  * One-time vs repeat buyers

---

## 🔄 Analytics Workflow

The project follows a **production-style analytics pipeline**:

### SQL → Python → Power BI

Each tool is used for a **specific purpose**, not duplicated work.

---

## 1️⃣ SQL — Data Preparation & Segmentation

**Tool:** MySQL

SQL was used as the **primary analytics engine** to:

* Clean transactional data (invalid records, null customers, negative quantities)
* Engineer revenue and purchase-date features
* Aggregate transactions to **customer-level metrics**
* Compute:

  * **Recency** (days since last purchase)
  * **Frequency** (number of purchases)
  * **Monetary value** (total revenue)
* Apply **rule-based RFM segmentation** to create business-interpretable customer groups

**Final Output:**

* `rfm_segments` table containing customer segment labels and metrics

> Rule-based segmentation was intentionally used to ensure **interpretability for business stakeholders**, rather than black-box modeling.

---

## 2️⃣ Python — Validation & Analytical Reasoning

**Tool:** Python (pandas, SQLAlchemy, matplotlib)

Python was used **only for validation and confirmation**, not re-computation.

Key tasks:

* Verified SQL-derived RFM metrics for consistency
* Analyzed:

  * Customer count by segment
  * Revenue contribution by segment
  * Average revenue per customer
* Generated clean, aggregated datasets for Power BI

This step ensured:

* SQL outputs were correct
* Revenue distributions and segment sizes were logically consistent

---

## 3️⃣ Power BI — Visualization & Storytelling

**Tool:** Power BI

A single-page executive dashboard was built to communicate insights clearly.

### Dashboard Components

* KPI cards:

  * Total Customers
  * Total Revenue
  * Average Revenue per Customer
* Customer & revenue distribution by segment
* Percentage of total revenue by segment
* Segment-level comparison table
* Interactive slicers for dynamic exploration

The dashboard is designed for **decision-making**, not exploratory analysis.

---

## 📈 Key Business Insights (Validated)

### 1️⃣ Revenue Is Highly Concentrated Among High-Value Customers

* A relatively small group of **High-Value customers contributes ~80% of total revenue**

**Implication:**
Revenue stability depends heavily on retaining a small customer subset.

---

### 2️⃣ At-Risk High-Value Customers Represent the Largest Revenue Threat

* Customers with strong historical value but declining recency pose a **significant retention risk**

**Implication:**
Losing a small number of these customers would have an outsized revenue impact.

---

### 3️⃣ Low-Value and Lost Customers Form a Large Base but Generate Minimal Revenue

* A large share of customers contributes little to overall revenue

**Implication:**
Broad acquisition or blanket retention campaigns are inefficient.

---

### 4️⃣ Revenue Distribution Is Heavily Skewed

* Customer revenue follows a **long-tail distribution**

**Implication:**
Targeted, segment-specific strategies outperform one-size-fits-all approaches.

---

## 🧠 Key Learnings

* Separating responsibilities across tools improves clarity:

  * SQL for data logic
  * Python for validation
  * Power BI for communication
* Customer-level analysis reveals risks hidden in aggregate sales metrics
* Business-friendly segmentation enables action, not just insight

---

## ⚠️ Assumptions & Limitations

* Analysis is based on historical transaction data only
* No demographic or marketing campaign data available
* Revenue used as a proxy for customer value (no margin data)
* RFM thresholds are rule-based and may vary by business context

---

## 🚀 Future Enhancements

* Time-based churn trend analysis
* Product- or category-level segmentation
* Campaign response analysis
* Predictive churn modeling (optional extension)

---

## 📌 Final Takeaway

This project demonstrates that **revenue growth is driven more by retention of high-value customers than by broad acquisition**.
By identifying revenue concentration and churn risk at the customer level, businesses can prioritize **targeted retention strategies that protect revenue with higher ROI**.

---

## 🧰 Tech Stack

* **SQL (MySQL)** — Data cleaning, feature engineering, segmentation
* **Python (pandas, SQLAlchemy, matplotlib)** — Validation & analysis
* **Power BI** — Interactive dashboard & storytelling
* **GitHub** — Version control & documentation

---

## 🔗 Repository Structure

```
├── data/
├── sql/
├── notebooks/
├── powerbi/
├── reports/
└── README.md
```

