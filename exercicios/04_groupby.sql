-- Quantos produtos são de rpg?
SELECT DescCateogriaProduto, count(*)

FROM produtos

GROUP BY DescCateogriaProduto