WITH customerorders as (

select 
    c.customerid as id, 
    concat(c.firstname, ' ', c.lastname) AS name,
    count(o.orderid) AS orders_count
from l1_landing.customers C

join l1_landing.orders o 
    on c.customerid = o.customerid

group by all
order by 3 desc

)

select id, name, orders_count FROM customerorders
