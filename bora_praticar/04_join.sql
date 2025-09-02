-- Qual o total de pontos trocados no Stream Elements em Junho de 2025?
SELECT t1.IdTransacao,
    --    t1.IdCliente,
    --    t1.DtCriacao,
    --    t2.IdProduto,
       count(1), 
       t3.DescCateogriaProduto


FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t3.DescCateogriaProduto = 'streamelements'
AND substr(t1.DtCriacao,1,7) = '2025-06'