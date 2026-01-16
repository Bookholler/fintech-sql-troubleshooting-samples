-- Identify duplicate transaction references
SELECT
    TransactionReference,
    COUNT(*) AS OccurrenceCount
FROM Transactions
GROUP BY TransactionReference
HAVING COUNT(*) > 1;
