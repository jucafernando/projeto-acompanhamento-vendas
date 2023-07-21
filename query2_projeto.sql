-- estados que mais venderam
select 'Brazil' as "país", state, count(fun.paid_date) as "vendas"
from sales.funnel fun
left join sales.customers cust
on fun.customer_id = cust.customer_id
where paid_date BETWEEN '2021-08-01' and '2021-08-31'
GROUP BY país,state
ORDER BY vendas desc limit 5