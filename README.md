# projeto-acompanhamento-vendas
Nesse repositório, temos o meu projeto de análise de dados. A base de dados, que é fictícia, é de um e-commerce de vendas de carros. 

A primeira análise visa verificar a quantidade de leads(potenciais clientes) e a refeita alcançada por mês. Temos também as informações 
de receita mediante as vendas por mês, a conversão(que mostra qual a porcentagem de leads que se tornaram clientes), e o ticket médio
(que é o valor médio que um cliente gasta por pedido). 

A query para retornarmos essas informações foi a seguinte:

![image](https://github.com/jucafernando/projeto-acompanhamento-vendas/assets/21082881/e78a5cec-73ba-47a3-8b97-3671803120eb)
![image](https://github.com/jucafernando/projeto-acompanhamento-vendas/assets/21082881/9d8adc74-ee6d-4915-876a-e05d7357e0ce) 
![image](https://github.com/jucafernando/projeto-acompanhamento-vendas/assets/21082881/c92fd3f8-6e29-418f-8859-c784adfdce04)

Primeiro, criei uma cte chamada data_visitas para ter a data truncada por mês e uma contagem de leads que visitaram o site 
por mês. A outra cte, que se chama payments, deve retornar a data truncada por mês, com a quantidade de vendas realizada e 
a receita total por mês. 

Após criada essas duas cte's, criei uam seleção juntando as colunas das duas cte's mais a criação dos campos convenção e ticket 
médio. Abaixo segue o resultado: 

Para analisarmos melhor os dados, criei uma planilha com as mesmas informações: 

![image](https://github.com/jucafernando/projeto-acompanhamento-vendas/assets/21082881/0945ef34-0053-4146-9b16-32ae050ba67f)


A segunda análise é verificar quais foram os estados que mais venderam. Seguem detalhes

query:

![image](https://github.com/jucafernando/projeto-acompanhamento-vendas/assets/21082881/4fd5353f-0d99-47ac-a949-5e79b989709e)

Gráfico:








