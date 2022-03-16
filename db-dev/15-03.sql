-- Insert, Update, Delete, Merge

BEGIN
  INSERT INTO tb_empregado (id_empregado, nome, sobrenome, email, data_admissao, id_funcao, salario)
  VALUES
  (sq_empregado.NEXTVAL, 'Geraldo', 'Henrique Neto', 'geraldohenrique@usp.br', SYSDATE, 'IT_PROG', 5000);
  COMMIT;
END;

SELECT *
FROM tb_empregado
WHERE nome = 'Geraldo'
AND sobrenome = 'Henrique Neto';

BEGIN
  UPDATE tb_empregado
  SET salario = 15000
  WHERE nome = 'Geraldo'
  AND sobrenome = 'Henrique Neto';
  COMMIT;
END;

DECLARE
v_id_empregado NUMBER;
BEGIN
  SELECT sq_empregado.CURRVAL INTO v_id_empregado
  FROM dual;

  DELETE FROM tb_empregado
  WHERE id_empregado = v_id_empregado;
  COMMIT;
END;

SELECT *
FROM tb_empregado
WHERE nome = 'Geraldo'
AND sobrenome = 'Henrique Neto';

-- Script teste

DECLARE
  v_contador NUMBER;
BEGIN
  FOR v_contador IN REVERSE 0..10 LOOP
    dbms_output.put_line(v_contador);
  END LOOP;
END;
/

DECLARE
  v_emp_count NUMBER;
BEGIN
  SELECT COUNT(1) INTO v_emp_count
  FROM tb_empregado
  WHERE id_departamento = &id_departamento;
END;
/

-- Enter value for id_departamento: 40
-- old 6: WHERE id_departamento = &id_departamento;
-- new 6: WHERE id_departamento = 40;

-- PL/SQL procedure sucessfully completed.

SET serveroutput ON
DECLARE
  v_emp_count NUMBER;
BEGIN
  SELECT COUNT(1) INTO v_emp_count
  FROM tb_empregado
  WHERE id_departamento = &&id_departamento;

  dbms_output.put_line('A contagem de empregados é:' || v_emp_count || 'para o departamento com o ID de:' || &id_departamento);
END;

SET serveroutput ON
DECLARE
  v_id_departamento NUMBER(4) := &id_departamento;
  v_nm_departamento VARCHAR2(30);
  v_emp_count NUMBER;

BEGIN
  SELECT COUNT(1) INTO v_emp_count
  FROM tb_empregado
  WHERE id_departamento = v_id_departamento;

  SELECT nm_departamento INTO v_nm_departamento
  FROM tb_departamento
  WHERE id_departamento = v_id_departamento;

  dbms_output.put_line('Existe' || v_emp_count || 'empregado(s)' || 'no departamento' || v_nm_departamento)
END;

SET serveroutput ON
DECLARE
  v_nome VARCHAR2(20);
  v_sobrenome VARCHAR2(25);
  v_emp_sobre VARCHAR2(25) := '&v_emp_sobre';
  v_emp_count NUMBER;
BEGIN
  SELECT COUNT(1) INTO v_emp_count
  FROM tb_empregado
  WHERE sobrenome = v_emp_sobre;

  IF v_emp_count > 1 THEN
    dbms_output.put_line('Existe mias de um empregado com o mesmo sobrenome');
  ELSE
    SELECT nome, sobrenome INTO v_nome, v_sobrenome
    FROM tb_empregado
    WHERE sobrenome = v_emp_sobre;

    dbms_output.put_line('Nome completo do empregado:' || v_nome ||''|| v_sobrenome);
  END IF;

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      dbms_output.put_line('Por favor, entre com um sobrenome diferente');
  END;