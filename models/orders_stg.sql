select
    orderid,
    orderdate,
    customerid,
    employeeid,
    storeid,
    status as statuscd,
    case 
        when status = '01' then 'In progress'
        when status = '02' then 'Completed'
        when status = '03' then 'Cancelled'
        else null
    end as statusdesc,
    updated_at
from l1_landing.orders