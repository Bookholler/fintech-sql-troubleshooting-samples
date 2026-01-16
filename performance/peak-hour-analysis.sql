-- Analyze transaction volume during peak hours
SELECT
    DATEPART(HOUR, CreatedAt) AS HourOfDay,
    COUNT(*) AS TransactionCount
FROM Transactions
GROUP BY DATEPART(HOUR, CreatedAt)
ORDER BY TransactionCount DESC;
