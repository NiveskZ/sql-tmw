-- Qual cliente fez mais transações no ano de 2024?

SELECT IdCliente, count(1)

FROM transacoes

WHERE DtCriacao LIKE '%2024%'

GROUP BY IdCliente

ORDER BY count(1) DESC