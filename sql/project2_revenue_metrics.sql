
WITH base AS (
    SELECT
        p.user_id,
        p.game_name,
        DATE_TRUNC('month', p.payment_date) AS payment_month,
        SUM(p.revenue_amount_usd) AS revenue,
        MIN(DATE_TRUNC('month', p.payment_date)) OVER (PARTITION BY p.user_id) AS first_payment_month, 
        u.language,
        u.age
    FROM project.games_payments p
    LEFT JOIN project.games_paid_users u
        ON p.user_id = u.user_id AND p.game_name = u.game_name
    GROUP BY 1,2,3,6,7
),


months AS (
    SELECT DATE_TRUNC('month', d)::date AS payment_month
    FROM generate_series('2022-03-01','2022-12-01', interval '1 month') d
),


users AS (
    SELECT DISTINCT
        b.user_id,
        MAX(b.language) AS language,
        MAX(b.age) AS age,
        MIN(b.first_payment_month) AS first_payment_month
    FROM base b
    GROUP BY b.user_id
),


user_month AS (
    SELECT
        u.user_id,
        m.payment_month,
        u.first_payment_month,
        u.language,
        u.age,
        COALESCE(SUM(b.revenue), 0) AS user_revenue
    FROM users u
    CROSS JOIN months m
    LEFT JOIN base b
        ON b.user_id = u.user_id AND b.payment_month = m.payment_month
    GROUP BY u.user_id, m.payment_month, u.first_payment_month, u.language, u.age
),


user_month_with_lags AS (
    SELECT
        user_id,
        payment_month,
        first_payment_month,
        language,
        age,
        user_revenue,
        LAG(user_revenue)  OVER (PARTITION BY user_id ORDER BY payment_month) AS prev_user_revenue,
        LEAD(user_revenue) OVER (PARTITION BY user_id ORDER BY payment_month) AS next_user_revenue
    FROM user_month
)

SELECT *
FROM user_month_with_lags
ORDER BY user_id, payment_month;
