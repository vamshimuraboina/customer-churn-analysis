CREATE DATABASE churn_analysis;
USE churn_analysis;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    region VARCHAR(20)
);

CREATE TABLE subscriptions (
    customer_id INT,
    plan_type VARCHAR(20),
    monthly_charges INT,
    tenure_months INT
);

CREATE TABLE usage_data (
    customer_id INT,
    data_usage_gb DECIMAL(5,2),
    call_minutes INT
);

CREATE TABLE payments (
    customer_id INT,
    payment_method VARCHAR(20),
    payment_status VARCHAR(20)
);

CREATE TABLE churn_status (
    customer_id INT,
    churn_flag VARCHAR(5),
    churn_date VARCHAR(20)
);
