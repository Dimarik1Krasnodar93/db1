SELECT 
DATE_TRUNC('day', transaction.created_on) date_trunc,
transaction.client_id client_id,
SUM(CASE WHEN transaction.amount > 0 THEN transaction.amount ELSE 0 END) debit,
SUM(CASE WHEN transaction.amount < 0 THEN transaction.amount ELSE 0 END) credit
FROM transaction
GROUP BY date_trunc, client_id
ORDER BY date_trunc
