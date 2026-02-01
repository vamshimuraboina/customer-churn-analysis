CREATE TABLE customer_master AS
SELECT
    c.customer_id,
    c.age,
    c.gender,
    c.region,
    s.plan_type,
    s.monthly_charges,
    s.tenure_months,
    u.data_usage_gb,
    u.call_minutes,
    p.payment_method,
    p.payment_status,
    cs.churn_flag,
    cs.churn_date
FROM customers c
JOIN subscriptions s ON c.customer_id = s.customer_id
JOIN usage_data u ON c.customer_id = u.customer_id
JOIN payments p ON c.customer_id = p.customer_id
JOIN churn_status cs ON c.customer_id = cs.customer_id;
