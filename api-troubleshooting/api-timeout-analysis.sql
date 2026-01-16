-- Backend processing exceeding API timeout threshold
SELECT
    RequestId,
    Endpoint,
    ProcessingTimeMs,
    Status
FROM ApiLogs
WHERE ProcessingTimeMs > 30000
ORDER BY ProcessingTimeMs DESC;
