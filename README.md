# Projeto Acompanhamento Vendas

Nesse repositório, temos o meu projeto de análise dos dados fictícios de um e-commerce de vendas de carros. 

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

Para analisarmos melhor os dados, criei uma planilha com um gráfico contendo as mesmas informações: 

![image](https://github.com/jucafernando/projeto-acompanhamento-vendas/assets/21082881/0945ef34-0053-4146-9b16-32ae050ba67f)


A segunda análise é verificar quais foram os estados que mais venderam. Para adquirir essas informações, foi necessário fazer
um join com as bases de dados funnel ( que contem as informações das vendas) e a base de dados customers (contendo informações 
dos clientes). Para conseguir colocar o mapa do Brasil no gráfico e retornar o resultado corretamente, criei uma coluna chamada
país, que possui como dado, o nome do Brazil, os campos state e uma contagem total do campo paid_date para verificarmos a quanti
dade total de visitas, filtrei essas informações para o mês de 08 de 2021, agrupei por país e estado para separarmos o resultado
da query por estado e ordenei por vendas e colocar os top 5 estados que mais venderam:


![image](https://github.com/jucafernando/projeto-acompanhamento-vendas/assets/21082881/4fd5353f-0d99-47ac-a949-5e79b989709e)



![image](https://github.com/jucafernando/projeto-acompanhamento-vendas/assets/21082881/501df8f2-c1bc-4852-8ef7-c3900c2a9012)

A Terceira análise é verificar o top 5 marcas mais vendidas no nosso site: 

![image](https://github.com/jucafernando/projeto-acompanhamento-vendas/assets/21082881/83d55f8d-3bb5-419e-92a7-7a5868fbbd31)


![image](https://github.com/jucafernando/projeto-acompanhamento-vendas/assets/21082881/f648422b-d913-44c9-92d9-b5999119f6d0)

Na quarta análise precisamos verificar o top 5 das lojas que mais venderam:

![image](https://github.com/jucafernando/projeto-acompanhamento-vendas/assets/21082881/b354dc19-d71f-4b84-a79a-2f13ea74d900)

E na quinta análise,precisamos verificar qual o dia da semana que o site recebeu mais visitas. Utilizei a função extract para
selecionar o dia que é representado entre número sendo 0 o primeiro dia da semana. Fiz um case when para termos uma coluna
com os nomes dos dias corretamente.

![image](https://github.com/jucafernando/projeto-acompanhamento-vendas/assets/21082881/cd2ca565-59a4-42f9-a4d4-820db0c15c6d)

![image](https://github.com/jucafernando/projeto-acompanhamento-vendas/assets/21082881/586eebc9-7e52-4c88-9202-47e071d26713)















