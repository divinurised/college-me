-- Escopo de variáveis

SET serveroutput ON

<<outer>>

DECLARE
v_contador NUMBER;

BEGIN
<<inner>>

DECLARE
v_contador NUMBER;

BEGIN
  SELECT 1 FROM inner.v_contador
  FROM tb_empregado
  WHERE ROWNUM = 1;
  outer.v_contador := inner.v_contador;
  EXCEPTION
    WHEN OTHERS THEN
      outer.v_contador := 0;
END;

IF v_contador = THEN
  dbms_output.put_line('Nenhum registro no esquema RH');
  ELSE
    dbms_output.put_line('Existe' || to_char(outer.v_contador) || 'resgistro no esquema RH');
END IF

EXCEPTION
  WHEN OTHERS THEN
   dbms_output.put_line(SQLERRM);
END;

-- Examplo 2

SET serveroutput ON

DECLARE
  v_num1 NUMBER := 95;
  v_num2 NUMBER := 85;

BEGIN
  dbms_output.put_line('Variável global v_num1:' || v_num1);
  dbms_output.put_line('Variável global v_num2:' || v_num2);

  DECLARE
    v_num1 NUBMER := 195;
    v_num2 NUBMER := 185;
  BEGIN
    dbms_output.put_line('Variável local v_num1' || v_num1);
    dbms_output.put_line('Variável local v_num2' || v_num2);
  END;
END;

-- Constantes

SET serveroutput ON

DECLARE 
  c_identificador CONSTANT VARCHAR2(30) := 'PL/SQL Essencial';
BEGIN
  dbms_output.put_line('Conteúdo de constante:' || c_identificador);
END;

-- Exemplo 2

SET serveroutput ON

DECLARE
  c_pi CONSTANT NUMBER := 3.14;

  v_raio NUMBER(5,2);
  v_diametro NUMBER(5,2);
  v_circunferencia NUMBER(7,2);
  v_area NUMBER(10,2);

BEGIN
  v_raio := 9.5;
  v_diametro := v_raio * 2;
  v_circunferencia := 2.0 * c_pi * v_raio;
  v_area := c_pi * v_raio * v_raio;

  dbms_output.put_line('Raio:' || v_raio);
  dbms_output.put_line('Diâmetro:' || v_diametro);
  dbms_output.put_line('Circunferência:' || v_circunferencia);
  dbms_output.put_line('Área:' || v_area);
END;

SET serveroutput ON

DECLARE

  v_soma_salario NUMBER(10,2)
  v_nome tb_empregado.nome%TYPE;
  v_sobrenome tb_empregado.sobrenome%TYPE;

BEGIN
  SELECT SUM(NVL(salario, 0)) INTO v_some_salario;
  FROM tb_empregado;
  WHERE id_departamento = 10;

  dbms_output.put_line('A soma dos salários é:' || v_some_salario);
  
  SELECT nome, sobrenome INTO v_nome, v_sobrenome
  FROM tb_empregado
  WHERE id_empregado = 100;

  dbms_output.put_line('O nome completo do empregado é:' || v_nome || '' || v_sobrenome);
END;