# 🛒 ShopSmart AI E-Commerce Analytics

A comprehensive Data Analytics & Machine Learning project built to analyze customer churn, sales performance, and customer spending distribution in an e-commerce platform.

ShopSmart-AI-Ecommerce-Analytics/
│
├── dashboard/
│   ├── dashboard_customers.csv
│   └── dashboard_sales.csv
│
├── data/
│   ├── customer_churn_predictions.csv
│   ├── customers.csv
│   ├── orders.csv
│   └── products.csv
│
├── database/
│   └── shopsmart.db
│
├── models/
│   ├── churn_model.pkl
│   ├── churn_scaler.pkl
│   └── model_info.txt
│
├── notebooks/
│   └── ShopSmart_Analytics.ipynb
│
└── sql/
    └── sales_analysis.sql


Key Features & Workflows
Exploratory Data Analysis (EDA):

Customer spending distribution analysis using Python (seaborn & matplotlib).

Customer churn prediction & risk segmentation.

Database Management & SQL Queries:

Structured SQLite database (shopsmart.db).

Detailed sales analysis queries written in SQL (sales_analysis.sql).

Machine Learning Model:

Pre-trained churn prediction model (churn_model.pkl) with feature scaling (churn_scaler.pkl).

Interactive Dashboard Data:

Exported analytical summaries for interactive visualization.

 Tech Stack
Languages: Python, SQL

Libraries: Pandas, NumPy, Matplotlib, Seaborn, Scikit-Learn

Database: SQLite

Tools: Jupyter Notebook, VS Code


How to Run Locally
Clone the repository:
git clone [https://github.com/arshma63/ShopSmart-AI-Ecommerce-Analytics.git](https://github.com/arshma63/ShopSmart-AI-Ecommerce-Analytics.git)
cd ShopSmart-AI-Ecommerce-Analytics

Open Jupyter Notebook
jupyter notebook notebooks/ShopSmart_Analytics.ipynb 