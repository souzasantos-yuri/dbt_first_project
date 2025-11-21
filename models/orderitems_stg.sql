select
    orderitemid,
    orderid,
    productid,
    quantity,
    unitprice,
    quantity * unitprice as totalprice,
    updated_at
from
    l1_landing.orderitems