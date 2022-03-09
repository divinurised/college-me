CREATE TABLE "tb_Demo"(
  "id_Demo" NUMBER,
  valor_demo VARCHAR2(20)
);

INSERT INTO "tb_Demo"
VALUE
(1, 'Linha um apenas');

SET serveroutput ON

BEGIN 
  FOR i IN (SELECT "id_Demo", valor_demo
    FROM "tb_Demo") LOOP
    dbms_output.put_line(i."id_Demo");
    dbms_output.put_line(i.valor_demo);
  END LOOP;
END;

-- Temp Vars

SET serveroutput ON

DECLARE
  v_nome VARCHAR2(50);
BEGIN
  V_NOME:= 'Treinamento PL/SQL Essencial';
  dbms_output.put_line('Conteúdo é:' || v_nome);
END;

-- Another example

DECLARE

v_salario NUMBER(6,2);
v_horas_trabalhada NUMBER:=40;
v_valor_hora NUMBER:=22.50;
v_bonus NUMBER:=150;
v_pais VARCHAR2(128);
v_contador NUMBER:=0;
v_controle BOOLEAN:=FALSE;
v_id_validade BOOLEAN;

BEGIN
 v_salario := (v_horas_trabalhada * v_valor_hora) + v_bonus;
 v_pais := 'Brasil';
 v_pais := UPPER('Canada');
 v_controle := (v_contador>100);
 v_id_validade := TRUE;
END;

-- Boolean literals

DECLARE

v_finalizado BOOLEAN:= TRUE;
v_completo BOOLEAN;
v_true_or_false BOOLEAN;

BEGIN
  v_finalizado := FALSE;
  v_completo :=  NULL;
  v_true_or_false := (3=4);
  v_true_or_false := (3<4);
END;

-- Record Vars

SET serveroutput ON

DECLARE
  TYPE registro_demo IS RECORD (
    id_aluno NUMBER DEFAULT 1,
    nome VARCHAR2(10) := 'Mario'
  );
  reg_demo REGISTRO_DEMO;

BEGIN
  dbms_output.put_line('[' || reg_demo.id_aluno || '][' || reg_demo.nome || ']');
END;

-- Another example

SET serveroutput ON

DECLARE
  TYPE tp_full_name IS RECORD (
    nome VARCHAR2(10) := 'Ricardo',
    sobrenome VARCHAR2(10) := 'Vargas'
  );
  TYPE tp_reg_aluno IS RECORD (
    id_aluno: NUMBER DEFAULT 1,
    nm_aluno: TP_FULL_NAME
  );
  reg_demo TP_REG_ALUNO;

BEGIN
  dbms_output.put_line('[' || reg_demo.id_aluno || ']');
  dbms_output.put_line('[' || reg_demo.nm_aluno.nome || ']');
  dbms_output.put_line('[' || reg_demo.nm_aluno.sobrenome || ']');
END;

-- VARRAY

SET serveroutput ON

DECLARE
  TYPE varray_numerico IS VARRAY(5) OF NUMBER;
  v_lista VARRAY_NUMERICO := varray_numerico(1, 2, 3, null, null);
BEGIN
  FOR i IN .. v_lista.LIMIT LOOP
  dbms_output.put('[' || v_lista(i) || ']');
  END LOOP;
dbms_output.new_line;
END;