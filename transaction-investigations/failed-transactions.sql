-- Identify failed transactions within a given period
SELECT
    TransactionReference,
    Amount,
    Status,
    FailureReason,
    CreatedAt
FROM Transactions
WHERE Status = 'FAILED'
  AND CreatedAt BETWEEN '2025-01-01' AND '2025-01-02'
ORDER BY CreatedAt DESC;
