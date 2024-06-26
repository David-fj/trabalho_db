USE VENDA_ONLINE;
-- 1
select SUM(QUANTIDADE_ESTOQUE) FROM PRODUTOS;
-- 2
SELECT AVG(PRECO) FROM PRODUTOS;
-- 3
select *
FROM PRODUTOS
WHERE NOME LIKE('MODELO 20');
-- 4
SELECT NOME, PRECO, DESCRICAO
FROM PRODUTOS
WHERE PRECO BETWEEN 50 AND 150;
-- 5
SELECT NOME, PRECO FROM PRODUTOS
ORDER BY PRECO
LIMIT 5;
-- 6
SELECT NOME, QUANTIDADE_ESTOQUE FROM PRODUTOS
WHERE QUANTIDADE_ESTOQUE = 0;
-- 7
SELECT NOME, DESCRICAO FROM PRODUTOS
WHERE DESCRICAO IS NOT NULL;
-- 8
SELECT NOME, PRECO FROM PRODUTOS
WHERE PRECO > (SELECT AVG(PRECO) FROM PRODUTOS);
-- 9
SELECT * FROM PRODUTOS
WHERE NOME LIKE 'SSD';
-- 10
SELECT NOME, PRECO FROM PRODUTOS
ORDER BY PRECO DESC;
-- 11
SELECT NOME, QUANTIDADE_ESTOQUE FROM PRODUTOS
WHERE QUANTIDADE_ESTOQUE % 2 = 0;
-- 12
SELECT NOME, PRECO, QUANTIDADE_ESTOQUE, DESCRICAO FROM PRODUTOS
WHERE PRECO > 100 AND QUANTIDADE_ESTOQUE > 0;