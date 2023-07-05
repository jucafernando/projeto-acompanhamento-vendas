-- Marcas que mais venderam no mês
-- Colunas: marca, vendas (#)


select prod.brand as "marca", count(fun.paid_date) as "vendas"
from sales.products prod
left join sales.funnel fun
on prod.product_id = fun.product_id
where paid_date BETWEEN '2021-08-01' and '2021-08-31'
GROUP BY 1
ORDER BY vendas DESC LIMIT 5