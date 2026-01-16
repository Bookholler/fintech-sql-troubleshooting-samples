-- Detect failed transactions where balance was updated
SELECT
    t.TransactionReference,
    t.Amount,
    t.Status,
    l.BalanceBefore,
    l.BalanceAfter
FROM Transactions t
JOIN WalletLedger l
    ON t.WalletId = l.WalletId
WHERE t.Status = 'FAILED'
  AND l.BalanceAfter > l.BalanceBefore;
