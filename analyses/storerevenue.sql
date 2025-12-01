select
    os.storeid,
    sum(ofact.revenue) as actualsales
from
    {{ ref('orders_stg') }} os

join
    {{ ref('orders_fact') }} ofact 
    on os.orderid = ofact.orderid
    
group by all