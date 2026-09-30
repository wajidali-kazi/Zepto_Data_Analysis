# 🛒 Zepto SQL Analysis

## 📌 Project Overview

This project focuses on analyzing Zepto product data using **SQL** to explore product categories, pricing, discounts, inventory, stock availability, and estimated revenue.

The project demonstrates an end-to-end SQL analysis workflow, including:

* Database and table creation
* Data exploration
* Data quality checks
* Data cleaning
* Price conversion
* Product analysis
* Category-level analysis
* Inventory analysis
* Business-oriented SQL queries

A **Power BI report** is also included in the project to support data visualization and reporting.

---

## 🎯 Project Objective

The main objective of this project is to use SQL to transform raw product data into meaningful business insights.

The analysis focuses on questions such as:

* Which products offer the highest discounts?
* Which high-value products are currently out of stock?
* Which categories have the highest estimated revenue?
* Which products have a high MRP but low discounts?
* Which categories provide the highest average discounts?
* Which products offer the best price per gram?
* How can products be grouped based on their weight?
* What is the total inventory weight for each category?

---

## 🛠️ Tools & Technologies

* **PostgreSQL / SQL**
* **Power BI**
* **GitHub**
* **Data Cleaning**
* **Data Analysis**
* **Data Visualization**

---

## 📂 Dataset Structure

The project uses a `zepto` table containing product-level information.

| Column                   | Description                                   |
| ------------------------ | --------------------------------------------- |
| `sku_id`                 | Unique identifier for each SKU                |
| `category`               | Product category                              |
| `name`                   | Product name                                  |
| `mrp`                    | Maximum Retail Price                          |
| `discountPercent`        | Product discount percentage                   |
| `availableQuantity`      | Available inventory quantity                  |
| `discountedSellingPrice` | Selling price after discount                  |
| `weightInGms`            | Product weight in grams                       |
| `outOfstock`             | Indicates whether the product is out of stock |
| `quantity`               | Product quantity                              |

The database schema and data types are defined directly in the SQL project.

---

## 🔍 Data Exploration

The project begins by exploring the dataset to understand its structure and quality.

### Exploration performed:

* Count total records
* View sample records
* Check for NULL values
* Identify unique product categories
* Compare in-stock and out-of-stock products
* Identify products appearing under multiple SKUs

## For example, the project checks NULL values across important fields and analyzes duplicate product names using `GROUP BY` and `HAVING`.

## 🧹 Data Cleaning

Data cleaning was performed before conducting the main analysis.

### Cleaning steps:

1. Identify products with zero MRP or selling price.
2. Remove records with zero MRP.
3. Convert prices from paise to rupees.
4. Verify the converted prices.

The SQL project uses `DELETE` to remove invalid zero-MRP records and `UPDATE` to convert the price values into rupees.

---

## 📊 Business Analysis

### Q1. Top 10 Best-Value Products

Identifies the top 10 products based on discount percentage.

**SQL concepts used:**

* `DISTINCT`
* `ORDER BY`
* `LIMIT`

---

### Q2. High-MRP Products That Are Out of Stock

Identifies products with an MRP greater than ₹300 that are currently out of stock.

**SQL concepts used:**

* `WHERE`
* Boolean filtering
* `ORDER BY`

---

### Q3. Estimated Revenue by Category

Calculates estimated revenue for each category using:

```text
Discounted Selling Price × Available Quantity
```

The results are grouped by product category.

---

### Q4. High-MRP Products With Low Discounts

Finds products where:

* MRP > ₹500
* Discount < 10%

This helps identify relatively expensive products with limited discounts.

---

### Q5. Top 5 Categories by Average Discount

Calculates the average discount percentage for each category and identifies the five categories with the highest average discount.

**SQL concepts used:**

* `AVG()`
* `ROUND()`
* `GROUP BY`
* `ORDER BY`
* `LIMIT`

---

### Q6. Price Per Gram Analysis

Calculates the price per gram for products weighing at least 100 grams.

Formula:

```text
Price Per Gram = Discounted Selling Price / Product Weight
```

Products are sorted from the lowest price per gram to the highest.

---

### Q7. Product Weight Classification

Products are classified into three groups based on their weight:

| Weight          | Category |
| --------------- | -------- |
| Less than 1000g | Low      |
| 1000g–4999g     | Medium   |
| 5000g and above | Bulk     |

This analysis uses a SQL `CASE` expression.

---

### Q8. Total Inventory Weight by Category

Calculates the total inventory weight available in each category using:

```text
Product Weight × Available Quantity
```

The results are grouped by category.

---

## 📈 Power BI

The project also includes a Power BI report for presenting the analysis visually.

**File:**

```text
Zepto_SQL_Analysis_Report.pbix
```

The Power BI component can be used to present the analyzed product, pricing, discount, inventory, and category information in an interactive reporting format.

---

## 🧠 SQL Concepts Demonstrated

This project demonstrates practical knowledge of:

* `CREATE TABLE`
* `SELECT`
* `WHERE`
* `DISTINCT`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `LIMIT`
* `COUNT()`
* `SUM()`
* `AVG()`
* `ROUND()`
* `CASE`
* `DELETE`
* `UPDATE`
* Boolean filtering
* Calculated columns
* Data cleaning
* Aggregate analysis

---

## 💡 Key Learning Outcomes

Through this project, I practiced how to:

* Work with a structured product dataset
* Identify and handle data-quality issues
* Clean raw pricing data
* Analyze product discounts
* Compare product availability
* Calculate estimated revenue
* Analyze inventory
* Create category-level metrics
* Write business-oriented SQL queries
* Convert analytical results into Power BI reports

---

## 📁 Project Files

```text
Zepto-SQL-Analysis/
│
├── zepto_SQL_Analysis_project.sql
├── Zepto_SQL_Analysis_Report.pbix
└── README.md
```

---

## 👨‍💻 Skills Demonstrated

**SQL | PostgreSQL | Data Cleaning | Data Exploration | Data Analysis | Business Analysis | Power BI | Data Visualization**

---

## 🚀 Future Improvements

Possible future improvements include:

* Adding more advanced SQL queries
* Creating additional business KPIs
* Adding time-based analysis if transaction-date data is available
* Improving Power BI dashboard interactivity
* Adding more inventory and pricing metrics
* Creating automated reporting workflows

---

## 📌 Conclusion

The Zepto SQL Analysis project demonstrates how SQL can be used to explore, clean, transform, and analyze product-level data to answer practical business questions.

The project combines **SQL analysis with Power BI visualization**, making it a useful portfolio project for demonstrating practical **Data Analyst skills**.

