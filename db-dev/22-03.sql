SET serveroutput ON

DECLARE
  v_a NUMBER(2) := 10;
BEGIN
  v_a :=10

  IF (v_a < 20) THEN
    dbms_output.put_line('v_a é menor que 20');
  END IF
  dbms_output.put_line('O valor de v_a é:' || v_a)
END;

-- Exemplo 2

SET serveroutput ON

DECLARE
  v_contador NUMBER;
BEGIN
  SELECT COUNT(1) INTO v_contador
  FROM tb_empregado;

  IF v_contador = 0 THEN
    dbms_output.put_line('Não existem empregados cadastrados');
  END IF;
END;

-- Exemplo 3

SET serveroutput ON
DECLARE
  c_id_cliente tb_clientes.id_cliente%TYPE := 1;
  c_salario tb_clientes.c_salario%TYPE;
BEGIN
  SELECT salario INTO c_salario
  FROM tb_clientes
  WHERE id_cliente = c_id_cliente;

  IF (c_salario <= 2000) THEN
    UPDATE tb_clientes SET salario = salario + 1000
    WHERE id_cliente = c_id_cliente;
    dbms_output.put_line('Salário alterado com êxito');
  END IF;
END;

-- Exemplo 4

SET serveroutput ON
DECLARE
  v_a NUMBER(3) := 100;
BEGIN
  IF (v_a < 20) THEN
    dbms_output.put_line('v_a é menor que 20');
  ELSE
    dbms_output.put_line('v_a não é menor que 20');
  END IF;
  dbms_output.put_line('O valor de v_a é:' || v_a);
END;

-- Exemplo 5

SET serveroutput ON
DECLARE
  v_contador NUMBER;
BEGIN
  SELECT COUNT(1) INTO v_contador
  FROM tb_empregado;

  IF v_contador = 0 THEN
    dbms_output.put_line('Não existe(m) empregado(s) cadastrado(s)');
  ELSE
    dbms_output.put_line('Existe(m)' || TO_CHAR(v_contador) || ' empregado(s) cadastrado(s)');
  END IF;
END;

-- Exemplo 6

SET serveroutput ON
DECLARE
  v_a NUMBER(3) := 100;
BEGIN
  IF (v_a = 10) THEN 
    dbms_output.put_line('Valor de v_a é: 10')
  ELSIF (v_a = 20) THEN 
  dbms_output.put_line('Valor de v_a é: 20')
  ELSIF (v_a = 30) THEN 
  dbms_output.put_line('Valor de v_a é: 30')
  ELSE 
    dbms_output.put_line('Nenhuma correspondência com os valores acima');
  END IF;
  dbms_output.put_line('O valor exato de v_a é:' || v_a);
END;

-- Exemplo 7

SET serveroutput ON
DECLARE
  v_contador NUMBER;
BEGIN
  SELECT COUNT(1) INTO v_contador
  FROM tb_empregado;

  IF v_contador = 0 THEN
    dbms_output.put_line('Não existe empregado cadastrado');
  ELSIF v_contador > 100 THEN
    dbms_output.put_line('Existem mais de 100 empregados cadastrados');
  ELSE
    dbms_output.put_line('Existe(m)' || TO_CHAR(v_contador) || 'empregado(s) cadastrado(s)');
  END IF;
END;

-- Exemplo 8

SET serveroutput ON
DECLARE
  v_grade CHAR(1) := 'A';
BEGIN
  CASE v_grade
      WHEN 'A' THEN dbms_output.put_line('Excelente')
      WHEN 'B' THEN dbms_output.put_line('Muito bom')
      WHEN 'C' THEN dbms_output.put_line('Bom')
      WHEN 'D' THEN dbms_output.put_line('Reprovado')
      WHEN 'E' THEN dbms_output.put_line('Tente novamente')
    ELSE dbms_output.put_line('Nenhuma classificação');
  END CASE;
END;

-- Exemplo 9

SET serveroutput ON
DECLARE
  v_contador NUMBER;
  v_msg VARCHAR2(100);
BEGIN
  SELECT COUNT(1) INTO v_contador
  FROM tb_empregado

  CASE v_contador
      WHEN 0 THEN dbms_output.put_line('Nenhum empregado cadastrado')
    ELSE dbms_output.put_line('Existe(m)' || TO_CHAR(v_contador) || ' empregado(s) cadastrado(s)')
  END CASE;
END;

-- Exemplo 10

SET serveroutput ON
DECLARE
  v_contador NUMBER;
  v_msg VARCHAR2(100);
BEGIN
  SELECT COUNT(1) INTO v_contador
  FROM tb_empregado;

  v_msg := 
  CASE
      WHEN v_contador = 0 THEN 'Nenhum empregado cadastrado'
      WHEN v_contador > 100 THEN 'Existem mais de 100 empregados cadastrados'
    ELSE 'Existe(m)' || TO_CHAR(v_contador) || ' empregado(s) cadastrado(s)'
  END;
  dbms_output.put_line(v_msg)
END;

-- Exemplo 11

SELECT 
  COUNT 
  (CASE WHEN salario < 2000 THEN 1 ELSE NULL END) contador_1,
  COUNT
  (CASE WHEN salario BETWEEN 2001 AND 4000 THEN 1 ELSE NULL END) contador_2,
  COUNT
  (CASE WHEN salario > 4000 THEN 1 ELSE NULL END), contador_3
FROM tb_empregado;
