-- Qual o produto mais transacionado?
SELECT IdProduto,
        -- count(1)
        sum(QtdeProduto) AS QtdeProdutoSum

FROM transacao_produto

GROUP BY IdProduto

ORDER BY count(1) DESC

LIMIT 1