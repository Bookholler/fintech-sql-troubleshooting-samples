-- Compare wallet balance with ledger totals
SELECT
    w.WalletId,
    w.CurrentBalance,
    SUM(l.Amount) AS LedgerTotal
FROM Wallets w
JOIN WalletLedger l
    ON w.WalletId = l.WalletId
GROUP BY w.WalletId, w.CurrentBalance
HAVING w.CurrentBalance != SUM(l.Amount);
