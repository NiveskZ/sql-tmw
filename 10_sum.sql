SELECT 
       sum(QtdePontos),
       sum(CASE
            WHEN QtdePontos > 0 THEN QtdePontos
       END) AS QtdePontosPos,

       sum(CASE
            WHEN QtdePontos < 0 THEN QtdePontos
       END) AS QtdePontosNeg,

        count(CASE
            WHEN QtdePontos < 0 THEN QtdePontos
       END) AS QtdeTransacoesNeg

FROM transacoes

WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'