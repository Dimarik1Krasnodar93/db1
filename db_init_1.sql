SELECT DISTINCT ON (client.client_id)
client.client_id client_id,
client.first_name first_name,
client.last_name last_name,
client.phone phone,
client.email email,
transaction.created_on created_on,
transaction.amount amount
FROM client 
LEFT JOIN 
transaction ON client.client_id =  transaction.client_id
ORDER BY client_id, amount DESC, created_on DESC
