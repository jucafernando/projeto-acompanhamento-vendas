-- Lojas que mais venderam
-- Colunas: loja, vendas (#)

select sto.store_name as "loja", count(fun.paid_date) as "vendas" 
from sales.stores sto
left join sales.funnel fun
on sto.store_id = fun.store_id
where paid_date BETWEEN '2021-08-01' and '2021-08-31'
GROUP BY loja
ORDER BY vendas desc limit 5