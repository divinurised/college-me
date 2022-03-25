-- Exemplo 01

SELECT COUNT(1)  
FROM tb_empregado
WHERE salario < 2000
UNION ALL
SELECT COUNT(1)
FROM tb_empregado
WHERE salario BETWEEN 2001 AND 4000
UNION ALL
SELECT COUNT(1)
FROM tb_empregado
WHERE salario > 4000

-- Exemplo 02

SET serveroutput ON
DECLARE
  v_a NUMBER := 100;
  v_b NUMBER := 200;
BEGIN
  IF (v_a = 200) THEN
    IF (v_b = 100) THEN
      dbms_output.put_line('Valor de v_a é 100 e v_b é 200');
    END IF;
  END IF;
  dbms_output.put_line('Valor exato de v_a é:' || v_a)
  dbms_output.put_line('Valor exato de v_b é:' || v_b)
END;

-- Exemplo 03

SET serveroutput ON
DECLARE
  v_x NUMBER := 10;
BEGIN
  LOOP
    dbms_output.put_line(v_x);
  v_x := v_x + 10;
    IF v_x > 10 THEN 
      EXIT;
    END IF;
  END LOOP;
  dbms_output.put_line('Depois do EXIT v_x é:' || v_x);
END;

-- Exemplo 04

SET serveroutput ON
DECLARE
  v_a NUMBER(2) := 10;
BEGIN
  WHILE v_a < 20 LOOP
    dbms_output.put_line('Valor de v_a:' || v_a);
  v_a := v_a + 1;
  END LOOP;
END;

-- Exemplo 05

SET serveroutput ON
DECLARE
  v_a NUMBER(2);
BEGIN
  FOR v_a IN 10 .. 20 LOOP
    dbms_output.put_line('Valor de v_a é:' || v_a)
  END LOOP;
END;

-- Exemplo 06

SET serveroutput ON
DECLARE
  v_contador NUMBER := 0;
BEGIN
  FOR i IN 1 .. 100 LOOP
    v_contador := v_contador + 1;
  END LOOP;
  dbms_output.put_line('O valor final de v_contador é:' || v_contador);
END;

-- Exemplo 07

SET serveroutput ON
DECLARE
  v_a NUMBER(2);
BEGIN
  FOR v_a IN REVERSE 10 .. 20 LOOP
      dbms_output.put_line('O valor final de v_a é:' || v_a);
  END LOOP;
END;

-- Exemplo 08

SET serveroutput ON
DECLARE
  v_contador NUMBER := 1;
BEGIN
  FOR IN 1 .. 1000 LOOP
    LOOP
      EXIT WHEN v_contador > 10;
      EXIT WHEN MOD(v_contador, 10) = 0;
      v_contador := v_contador + 1;
    END LOOP;
    v_contador := v_contador + 1;
  End LOOP;
  dbms_output.put_line('O valor de v_contador é:' || v_contador);
END;

-- Exemplo 09

SET serveroutput ON
DECLARE
  v_contador NUMBER(2) := 10;
BEGIN
  WHILE v_a < 20 LOOP
    dbms_output.put_line('Valor de v_a' || v_a);
    v_a := v_a + 1;
    IF v_a > 15 THEN
      EXIT;
    END IF;
  END LOOP;
END;

-- Exemplo 10

SET serveroutput ON
DECLARE
  v_contador NUMBER(2) := 10;
BEGIN
  WHILE v_a < 20 LOOP
    dbms_output.put_line('Valor de v_a' || v_a);
    v_a := v_a + 1;
  EXIT WHEN v_a > 15
  END LOOP;
END;

-- Exemplo 11

SET serveroutput ON
DECLARE
  v_contador NUMBER(2) := 10;
BEGIN
  WHILE v_a < 20 LOOP
    dbms_output.put_line('Valor de v_a' || v_a);
    v_a := v_a + 1;
    IF v_a = 15 THEN
      v_a := v_a + 1;
      CONTINUE;
    END IF;
  END LOOP;
END;

-- Exemplo 12

SET serveroutput ON
DECLARE
  v_resultado BOOLEAN;
  v_compare1 BOOLEAN;
  v_compare2 BOOLEAN;
BEGIN
  v_compare1 := true;
  v_compare2 := true;
  v_resultado := v_compare1 AND v_compare2;
  dbms_output.put_line('O valor de v_resultado é:' || 
  CASE v_resultado 
  WHEN TRUE THEN 'TRUE' 
  WHEN FALSE THEN 'FALSE' 
  ELSE 'NULL' END);
END;

-- Exemplo 13

SET serveroutput ON
DECLARE
  v_resultado BOOLEAN;
  v_compare1 BOOLEAN;
  v_compare2 BOOLEAN;
BEGIN
  v_compare1 := true;
  v_compare2 := false;
  v_resultado := v_compare1 AND v_compare2;
  dbms_output.put_line('O valor de v_resultado é:' || 
  CASE v_resultado 
  WHEN TRUE THEN 'TRUE' 
  WHEN FALSE THEN 'FALSE' 
  ELSE 'NULL' END);
END;

-- Exemplo 14

SET serveroutput ON
DECLARE
  v_resultado BOOLEAN;
  v_compare1 BOOLEAN;
  v_compare2 BOOLEAN;
BEGIN
  v_compare1 := null;
  v_compare2 := true;
  v_resultado := v_compare1 AND v_compare2;
  dbms_output.put_line('O valor de v_resultado é:' || 
  CASE v_resultado 
  WHEN TRUE THEN 'TRUE' 
  WHEN FALSE THEN 'FALSE' 
  ELSE 'NULL' END);
END;

-- Exemplo 15

SET serveroutput ON
DECLARE
  v_resultado BOOLEAN;
  v_compare1 BOOLEAN;
  v_compare2 BOOLEAN;
BEGIN
  v_compare1 := null;
  v_compare2 := false;
  v_resultado := v_compare1 AND v_compare2;
  dbms_output.put_line('O valor de v_resultado é:' || 
  CASE v_resultado 
  WHEN TRUE THEN 'TRUE' 
  WHEN FALSE THEN 'FALSE' 
  ELSE 'NULL' END);
END;

-- Exemplo 16

SET serveroutput ON
DECLARE
  v_resultado BOOLEAN;
  v_compare1 BOOLEAN;
  v_compare2 BOOLEAN;
BEGIN
  v_compare1 := true;
  v_compare2 := true;
  v_resultado := v_compare1 AND v_compare2;
  dbms_output.put_line('O valor de v_resultado é:' || 
  CASE v_resultado 
  WHEN TRUE THEN 'TRUE' 
  WHEN FALSE THEN 'FALSE' 
  ELSE 'NULL' END);
END;

-- Exemplo 17

SET serveroutput ON
DECLARE
  v_resultado BOOLEAN;
  v_compare1 BOOLEAN;
  v_compare2 BOOLEAN;
BEGIN
  v_compare1 := true;
  v_compare2 := false;
  v_resultado := v_compare1 AND v_compare2;
  dbms_output.put_line('O valor de v_resultado é:' || 
  CASE v_resultado 
  WHEN TRUE THEN 'TRUE' 
  WHEN FALSE THEN 'FALSE' 
  ELSE 'NULL' END);
END;