-- Problema 03, exemplo 01

SET serveroutput ON
DECLARE
  v_user_name VARCAHR(100)
  v_ip_address VARCAHR(100)

---------------------------------------------
-- Problema 04

SET serveroutput ON
DECLARE
  CURSOR cur_emp IS
    SELECT nome, sobrenome, telefone
    FROM tb_empregado;
  v_emp tb_empregado%ROWTYPE;
BEGIN
  FOR v_emp IN cur_emp LOOP
    IF v_emp.telefone IS NOT NULL THEN
      dbms.output.put_line(RPAD(v_emp.nome || '' || v_emp.sobrenome, 35, '.') || v_emp.telefone)
    ELSE
      dbms.output.put_line(v_emp.nome || '' || v_emp.sobrenome || ' não possui número de telefone');
    END IF;
  END LOOP;
END;

-- Exemplo 01

CREATE OR REPLACE PROCEDURE sp_altera_dpto_emp(p_id_emp IN NUMBER, p_id_depto IN NUMBER)
AS
  v_linha_emp tb_empregado%ROWTYPE;
  v_depto tb_departamento.nm_departamento%TYPE;
  v_contador NUMBER := 0;
BEGIN
  SELECT COUNT(*) INTO v_contador
  FROM tb_empregado
  WHERE id_empregado = p_id_emp;
  IF v_contador = 1 THEN
    SELECT * INTO v_linha_emp
    FROM tb_empregado
    WHERE id_empregado = p_id_emp;

    IF v_linha_emp.id_departamento != p_id_depto THEN
      v_linha_emp.id_departamento := p_id_depto;

      UPDATE tb_empregado SET ROW = v_linha_emp
      WHERE id_empregado = p_id_emp
    END IF;

    SELECT nm_departamento INTO v_depto
    FROM tb_departamento
    WHERE id_departamento = p_id_depto;

    dbms.output.put_line('O empregado' || v_linha_emp.nome || '' || v_linha_emp.sobrenome || ' se encontra alocado no:' || v_depto);
  ELSE
    dbms.output.put_line('O empregado já se encontra alocado nesse departamento');
  END IF;
  ELSIF v_contador > 1 THEN
    dbms.output.put_line('O ID do empregado fornecido não é exclusivo');
  ELSE
    dbms.output.put_line('Nenhum registro de empregado foi localizado para esse ID');
  END IF;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      dbms.output.put_line('ID do empregado e ou departamento inválido, tente novamente!');
    WHEN OTHERS THEN  
      dbms.output.put_line('Alteração não realizada, por favor verifique o ID e tente novamente!');
END;

 