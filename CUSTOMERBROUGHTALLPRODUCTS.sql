select customer_id from (select customer_id , count(distinct product_key) ct from Customer group by customer_id) pp where ct =(select count(distinct product_key) from Product)

