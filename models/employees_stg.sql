SELECT
employeeid,
firstname,
lastname,
email,
jobtitle,
hiredate,
managerid,
address,
city,
state,
zipcode,
CONCAT(firstname, ' ', lastname) AS employeename,
updated_at
FROM
{{ source('landing', 'employees') }}