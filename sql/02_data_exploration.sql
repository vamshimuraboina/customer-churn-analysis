SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM subscriptions;
SELECT COUNT(*) FROM usage_data;
SELECT COUNT(*) FROM payments;
SELECT COUNT(*) FROM churn_status;

SELECT gender, COUNT(*) FROM customers GROUP BY gender;
SELECT region, COUNT(*) FROM customers GROUP BY region;

SELECT plan_type, COUNT(*) FROM subscriptions GROUP BY plan_type;

SELECT churn_flag, COUNT(*) FROM churn_status GROUP BY churn_flag;

SELECT payment_status, COUNT(*) FROM payments GROUP BY payment_status;
