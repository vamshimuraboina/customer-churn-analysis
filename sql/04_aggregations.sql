CREATE TABLE churn_summary AS
SELECT churn_flag, COUNT(*) AS customer_count
FROM customer_master
GROUP BY churn_flag;

CREATE TABLE churn_by_plan AS
SELECT plan_type, churn_flag, COUNT(*) AS customers
FROM customer_master
GROUP BY plan_type, churn_flag;

CREATE TABLE churn_revenue_loss AS
SELECT plan_type,
       COUNT(*) AS churned_customers,
       SUM(monthly_charges) AS revenue_lost
FROM customer_master
WHERE churn_flag = 'Yes'
GROUP BY plan_type;

CREATE TABLE churn_by_region AS
SELECT region, churn_flag, COUNT(*) AS customers
FROM customer_master
GROUP BY region, churn_flag;

CREATE TABLE usage_churn_summary AS
SELECT churn_flag,
       ROUND(AVG(data_usage_gb),2) AS avg_data_usage,
       ROUND(AVG(call_minutes),0) AS avg_call_minutes
FROM customer_master
GROUP BY churn_flag;
