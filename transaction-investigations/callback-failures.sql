-- Identify failed callbacks to partner systems
SELECT
    CallbackUrl,
    ResponseCode,
    RetryCount,
    CreatedAt
FROM CallbackLogs
WHERE ResponseCode != 200
ORDER BY CreatedAt DESC;
