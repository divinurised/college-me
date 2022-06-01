-- Sintaxe de criação de uma Stored Procedure

-- Exemplo 01

CREATE OR REPLACE PROCEDURE sp_incremento_salario
(p_id_emp IN tb_empregado.id_empregado%TYPE, p_percentual IN NUMBER)
IS
BEGIN
  UPDATE tb_empregado
  SET salario = salario * (1+ p_percentual / 100)
  WHERE id_empregado = p_id_emp;
END sp_incremento_salario;
EXECUTE sp_incremento_salario(176,10)

-- Exemplo 02

CREATE OR REPLACE PROCEDURE sp_query_emp
(p_id_emp IN tb_empregado.id_empregado%TYPE, 
p_nome OUT tb_empregado.nome%TYPE, 
p_salario OUT tb_empregado.salario%TYPE)
IS
BEGIN
  SELECT nome, salario INTO p_nome, p_salario
  FROM tb_empregado
  WHERE id_empregado = p_id_emp;
END sp_query_emp;

-- Parte 2 - Usando o parâmetro OUT

SET serveroutput ON
DECLARE
  v_nome tb_empregado.nome%TYPE
  v_salario tb_empregado.salario%TYPE
BEGIN
  sp_query_emp(171, v_nome, v_salario);
  dbms_output.put_line('Nome:' || v_nome);
  dbms_output.put_line('Salário:' || v_salario);
END;

-- Exemplo 03 - IN e OUT (Sem deixar gravado na memória, pois é declarado em um bloco anônimo)

SET serveroutput ON
DECLARE
  v_a NUMBER;
  v_b NUMBER;
  v_c NUMBER;

  PROCEDURE sp_menor_valor(p_x IN number, p_y IN number, p_z OUT number)
  IS
  BEGIN
    IF p_x < p_y THEN
      p_z := p_x;
    ELSE
      p_z := p_y;
    END IF;
  END;
BEGIN
  v_a := 1;
  v_b := 9;

  sp_menor_valor(v_a, v_b, v_c);
  dbms_output.put_line('O menor valor entre (-1, 9) é: ' || v_c);
END;

-- Exemplo 04

SET serveroutput ON
DECLARE
  v_a NUMBER;

  PROCEDURE sp_quadrado_num(p_x IN OUT NUMBER)
  IS
  BEGIN
    p_x := p_x * p_x;
  END;
BEGIN
  v_a := 43;
  sp_quadrado_num(v_a);
  dbms_output.put_line('O quadrado de (43):' || v_a);
END;

-- Exemplo 05

CREATE OR REPLACE PROCEDURE sp_formata_fone
(p_nr_fone IN OUT VARCHAR2)
IS
BEGIN
  p_nr_fone := 
  '(' || SUBSTR(p_nr_fone, 1, 3) ||
  ')' || SUBSTR(p_nr_fone, 4, 3) ||
  '-' || SUBSTR(p_nr_fone, 7);
END sp_formata_fone;

SET serveroutput ON
DECLARE
  out_valor VARCHAR2(13) := '8006330575'
BEGIN
  sp_formata_fone(out_valor);
  dbms_output.put_line(out_valor);
END;

-- Exemplo de passagem de parâmetros

CREATE OR REPLACE PROCEDURE sp_adiciona_depto
(p_nome IN tb_departamento.nm_departamento%TYPE
p_localizacao IN tb_departamento.id_localizacao%TYPE)
IS
BEGIN
  INSERT INTO tb_departamento
  (id_departamento, nm_departamento, id_localizacao)
  VALUES
  (sq_departamento.NEXTVAL, p_nome, p_localizacao);
END sp_adiciona_depto;

EXECUTE sp_adiciona_depto('Treinamento', 2500);
EXECUTE sp_adiciona_depto(p_localizacao => 2400, p_nome => 'Educação')
