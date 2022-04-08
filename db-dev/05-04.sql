-- Exemplo 01

SET serveroutput ON
DECLARE
  v_resultado BOOLEAN;
  v_compare1 BOOLEAN;
  v_compare2 BOOLEAN;
BEGIN
  v_compare1 := null;
  v_compare2 := true;
  v_resultado := v_compare1 OR v_compare2;
  dmbs_output.put_line('O valor de v_resultado é: ' || CASE v_resultado WHEN TRUE THEN 'TRUE' WHEN FALSE THEN 'FALSE' ELSE 'NULL' END);
END;

-- Exemplo 02 DECODE

SELECT DECODE(cidade, 'Sao Paulo', 'São Paulo', cidade) AS CIDADE
FROM tb_localizacao;

-- Exemplo 03

SELECT nome || '' || sobrenome, salario + (salario * NVL(percentual_comissao, 0)) AS Total_Salario
FROM tb_empregado;

-- Exemplo 04

SELECT COALESCE(NULL, NULL, NULL, 1)
FROM dual;

ALTER TABLE tb_empregado
ADD (percentual_comissao_maxima NUMBER);

SELECT percentual_comissao,
  COALESCE(percentual_comissao_maxima, percentual_comissao, 0.1),
  COALESCE(percentual_comissao_maxima, percentual_comissao, 0.1)
* salario AS Valor_Comissao
FROM tb_empregado
WHERE id_departamento IN (70, 80);

-- ----- ---- --- 

SELECT AVG(salario)
FROM tb_empregado
WHERE id_departamento = 100;

--------------------

SELECT MIN(salario)
FROM tb_empregado
WHERE id_departamento = 100;

--------------------

SELECT MAX(salario)
FROM tb_empregado
WHERE id_departamento = 100;