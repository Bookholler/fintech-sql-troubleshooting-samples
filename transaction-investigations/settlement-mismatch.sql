-- Identify settlement mismatches
SELECT
    SettlementDate,
    ExpectedAmount,
    ActualAmount,
    (ExpectedAmount - ActualAmount) AS Difference
FROM Settlements
WHERE ExpectedAmount <> ActualAmount;
