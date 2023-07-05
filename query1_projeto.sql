-- Receita, leads, conversão e ticket médio mês a mês
-- Colunas: mês, leads (#), vendas (#), receita (k, R$), conversão (%), ticket médio (k, R$)

with data_visitas as (
	select
		date_trunc('month', visit_page_date)::date as visit_page_month,
		count(*) as visit_count
	from sales.funnel
	GROUP BY visit_page_month
	order by visit_page_month
	),

	payments as (
	select 
		date_trunc('month', fun.visit_page_date)::date as page_month,
		count(fun.paid_date) as paid_count,
		sum(prod.price * (1+fun.discount)) as receita
	from sales.funnel fun
	left join sales.products prod
		ON fun.product_id = prod.product_id
	where fun.paid_date is NOT NULL
	group by page_month
	order by page_month	
	)

select 
	data_visitas.visit_page_month as "mes",
	data_visitas.visit_count as "leads", 
	payments.paid_count as "vendas",
	(payments.receita/1000) as "receita (k, R$)",
	(payments.paid_count::float/data_visitas.visit_count::float) as "conversão %",
	(payments.receita/payments.paid_count/1000) as "ticket médio (k, R$)"
from data_visitas 
left join payments 
	on data_visitas.visit_page_month = page_month