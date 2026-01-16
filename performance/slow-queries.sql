-- Identify long-running database queries
SELECT
    QueryText,
    ExecutionTimeMs,
    LastExecutionTime
FROM QueryPerformanceLogs
WHERE ExecutionTimeMs > 20000
ORDER BY ExecutionTimeMs DESC;
