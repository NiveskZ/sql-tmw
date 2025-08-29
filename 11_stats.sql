SELECT round(avg(QtdePontos)) AS mediaCarteira,
        -- 1. faz o número virar float
       1. * sum(QtdePontos) / count(IdCliente) AS mediaCarteiraRoots,
       min(QtdePontos) AS minCarteira,
       max(QtdePontos) AS maxCarteira,
       sum(FlTwitch),
       sum(FlEmail)

FROM clientes