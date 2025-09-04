-- Qual o dia da semana mais ativo de cada usuário?
WITH tb_cliente_semana AS (

    SELECT IdCliente,
        strftime('%w', substr(DtCriacao,1,10)) AS dtDiaSemana,
        count(DISTINCT IdTransacao) AS qtdTransacao

    FROM transacoes

    GROUP BY IdCliente, dtDiaSemana

),

tb_rn AS (

    SELECT *,
        row_number() OVER (PARTITION BY IdCliente ORDER BY qtdTransacao DESC) AS rn
    FROM tb_cliente_semana

)

SELECT *

FROM tb_rn

WHERE rn = 1