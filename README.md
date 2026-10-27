# IKEA Gifting Customer Analytics and RFM Segmentation

## 📌 Project Overview

This project focuses on analyzing online retail transactions to understand customer purchasing behavior and perform customer segmentation using **RFM (Recency, Frequency, Monetary) Analysis**.

The project uses SQL for data cleaning and preparation, Python for RFM analysis and customer segmentation, and Power BI for interactive dashboard development.

## 🎯 Project Objectives

- Analyze customer purchasing behavior and sales performance.
- Identify high-value and loyal customers using RFM analysis.
- Segment customers based on their purchasing patterns.
- Identify inactive customers using a 90-day inactivity threshold.
- Analyze customer value and purchasing trends.
- Create an interactive Power BI dashboard to support data-driven decisions.

## 📂 Dataset

**Dataset:** Online Retail II  
**Source:** [UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/502/online+retail+ii)

The dataset contains online retail transaction records from December 2009 to December 2011.

### Key Columns

- Invoice
- StockCode
- Description
- Quantity
- InvoiceDate
- Price
- CustomerID
- Country

## 🛠️ Tools and Technologies

- **PostgreSQL:** Data cleaning, data quality checks, and duplicate removal
- **Python:** RFM analysis and customer segmentation
- **Pandas:** Data manipulation and analysis
- **Jupyter Notebook:** Python analysis
- **Power BI:** Interactive dashboards and visualizations
- **CSV and Excel:** Data storage and transfer

## 📁 Project Files

| File Name | Description |
|---|---|
| `EcommerceCustomerAnalysis.sql` | Imports, combines, cleans, and exports retail transaction data. |
| `IKEA RFM Segmentation.ipynb` | Calculates RFM metrics, scores customers, and assigns customer segments using Python. |
| `IKEA BI Analysis.pbix` | Power BI report containing Overview and RFM Analysis pages. |

## 🔄 Project Workflow

### 1. Data Cleaning Using SQL

- Created separate tables for the two retail periods.
- Imported transaction data from CSV files.
- Combined both datasets using `UNION ALL`.
- Checked for missing Customer IDs and descriptions.
- Identified transactions with zero or negative quantities.
- Checked for duplicate records.
- Removed exact duplicate rows.
- Exported the cleaned dataset for Python analysis.

### 2. Customer Analysis Using Python

- Loaded the cleaned dataset using Pandas.
- Converted invoice dates into datetime format.
- Prepared customer transaction data for analysis.
- Calculated Recency, Frequency, and Monetary values.
- Assigned RFM scores from 1 to 5.
- Segmented customers based on their RFM scores.
- Identified inactive customers using a 90-day threshold.
- Exported the processed data for Power BI.

### 3. RFM Analysis

RFM analysis is a customer segmentation technique based on three factors:

- **Recency (R):** How recently a customer made a purchase.
- **Frequency (F):** How often a customer made purchases.
- **Monetary (M):** The total amount spent by a customer.

Customers are scored based on these three factors and assigned to different segments.

### Customer Segments

| Segment | Description |
|---|---|
| Champions | Customers with high RFM scores. |
| Loyal | Customers who purchase regularly. |
| At Risk | Previously frequent customers who have not purchased recently. |
| New | Customers who have purchased recently but have a lower purchase frequency. |
| Need Attention | Customers who may benefit from targeted engagement. |
| Lost | Customers who do not meet the criteria for the other defined segments. |

Customer segment assignments follow the rules implemented in the Python notebook.

### 4. Power BI Dashboard

The Power BI report contains two pages:

**Overview**
- General project overview
- Business and customer metrics
- Interactive dashboard navigation

**RFM Analysis**
- Customer segmentation
- Customer-level RFM analysis
- Customer value and purchasing behavior

Open the `.pbix` file in Power BI Desktop to explore the report.

## 📊 Key Business Questions

- Who are the most valuable customers?
- Which customers purchase frequently?
- Which customers have not purchased recently?
- How can customers be grouped based on purchasing behavior?
- Which customer segments should receive targeted marketing or retention campaigns?

## 💡 Business Benefits

- Helps identify high-value customers.
- Supports customer retention strategies.
- Helps businesses identify customers who may need re-engagement.
- Improves understanding of customer purchasing behavior.
- Supports targeted marketing and customer engagement.
- Enables data-driven decision-making through interactive dashboards.

## 🚀 How to Run the Project

1. Download the Online Retail II dataset from the [UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/502/online+retail+ii).
2. Update the CSV file paths in `EcommerceCustomerAnalysis.sql` according to your computer.
3. Run the SQL script in PostgreSQL.
4. Export the cleaned dataset as `RetailCleared.csv`.
5. Open `IKEA RFM Segmentation.ipynb` in Jupyter Notebook.
6. Update the dataset path if required and run the notebook cells in order.
7. Generate the processed Excel file for Power BI.
8. Open `IKEA BI Analysis.pbix` in Power BI Desktop.
9. Update the data source path if required and refresh the report.

## 📚 Key Learnings

- SQL-based data cleaning and validation
- Combining datasets and removing duplicate records
- Data manipulation using Python and Pandas
- Customer-level aggregation and RFM analysis
- Customer segmentation using scoring techniques
- Data export and preparation for Power BI
- Dashboard development and business insight generation

## ⚠️ Important Notes

- Update local file paths before running the SQL script or Python notebook.
- The Python notebook uses a fixed analysis snapshot date of December 10, 2011.
- The 90-day inactivity threshold is an analytical rule and does not prove that a customer has permanently left.
- The project uses a public retail dataset and is not affiliated with or endorsed by IKEA.

## 👨‍💻 Author

**Aman Singh Rawat**

Aspiring Data Analyst | SQL | Python | Power BI | Excel
