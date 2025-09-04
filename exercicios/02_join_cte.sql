-- Como foi a curva de Churn do Curso de SQL?

-- SELECT DtCriacao,
--         substr(DtCriacao,1,10) AS dtDia,
--         count(DISTINCT IdCliente) AS qtdCliente

-- FROM transacoes

-- WHERE DtCriacao >= '2025-08-25'
-- AND DtCriacao < '2025-08-30'

-- GROUP BY dtDia

WITH tb_clientes_d1 AS (
    SELECT DISTINCT IdCliente

    FROM transacoes

    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-26'
)

SELECT
        substr(t2.DtCriacao,1,10) AS dtDia,
        count(DISTINCT t1.IdCliente) AS qtdCliente,
        1.* count(DISTINCT t1.IdCliente)/(SELECT count(*) FROM tb_clientes_d1) AS pctRetencao,
        1 - 1.* count(DISTINCT t1.IdCliente)/(SELECT count(*) FROM tb_clientes_d1) AS pctChurn

FROM tb_clientes_d1 AS t1

LEFT JOIN transacoes AS t2
ON t1.IdCliente = t2.IdCliente

WHERE t2.DtCriacao >= '2025-08-25'
AND t2.DtCriacao < '2025-08-30'

GROUP BY dtDia