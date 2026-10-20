SELECT data_venda,
       categoria,
       valor_venda,
       SUM(valor_venda) OVER (PARTITION BY categoria ORDER BY data_venda ASC) AS acumulado_categoria
FROM VENDAS_LOJA
ORDER BY categoria, data_venda ASC;
