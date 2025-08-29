-- Qual o valor médio de pontos positivos por dia?

SELECT sum(QtdePontos) AS totalPontos,
       count(DISTINCT substr(DtCriacao, 1, 10)) AS 'Dia',
       sum(QtdePontos) / count(DISTINCT substr(DtCriacao,1,10)) AS avgPontosDia
       

FROM transacoes

WHERE QtdePontos > 0;

SELECT substr(DtCriacao, 1, 10) AS dtDia,
        AVG(QtdePontos) AS avgPontosDia

FROM transacoes

WHERE QtdePontos > 0

GROUP BY 1

ORDER BY 2 DESC;