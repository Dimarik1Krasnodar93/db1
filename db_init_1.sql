SELECT 
client.client_id client_id,
client.first_name first_name,
client.last_name last_name,
client.phone phone,
client.email email,
MAX(transaction.amount) amount,
MAX(transaction.created_on) created_on
FROM client 
LEFT JOIN 
transaction ON client.client_id =  transaction.client_id
GROUP BY client.client_id, 
client.first_name,
client.last_name,
client.phone,
client.email
