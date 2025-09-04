-- Dentre os clientes de janeiro/2025, quantos assistiram o curso de SQL?

WITH tb_clientes_janeiro AS (
    SELECT DISTINCT IdCliente

    FROM transacoes

    WHERE dtCriacao >= '2025-01-01'
    AND dtCriacao < '2025-02-01'
)

SELECT count(DISTINCT t1.IdCliente),
        count(DISTINCT t2.IdCliente)

FROM tb_clientes_janeiro AS t1

LEFT JOIN transacoes AS t2
ON t1.IdCliente = t2.IdCliente
AND t2.DtCriacao >= '2025-08-25'
AND t2.DtCriacao < '2025-08-30'