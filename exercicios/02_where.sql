-- Lista de pedidos realizados no fim de semana;
SELECT *, strftime('%w',substr(DtCriacao,1,10))

FROM transacoes

WHERE strftime('%w',substr(DtCriacao,1,10)) >= '5' 
