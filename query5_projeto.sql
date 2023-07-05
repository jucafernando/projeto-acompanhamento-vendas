-- (Query 5) Dias da semana com maior número de visitas ao site
-- Colunas: dia_semana, dia da semana, visitas (#)
    
select
    extract('dow' from visit_page_date) as dia_semana,
    CASE 
        WHEN extract('dow' from visit_page_date)=0 then 'domingo' 
        WHEN extract('dow' from visit_page_date)=1 then 'segunda'
        WHEN extract('dow' from visit_page_date)=2 then 'terca'
        WHEN extract('dow' from visit_page_date)=3 then 'quarta'
        WHEN extract('dow' from visit_page_date)=4 then 'quinta'
        WHEN extract('dow' from visit_page_date)=5 then 'sexta'
        WHEN extract('dow' from visit_page_date)=6 then 'sabado'
        else null end as "dia da semana",
    count(*) as "visitas"
from sales.funnel
    where visit_page_date between '2021-08-01' and '2021-08-31' 
    group by dia_semana
    order by dia_semana