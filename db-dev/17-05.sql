-- Procedures

CREATE OR REPLACE PROCEDURE sp_adiciona_depto
(p_nome IN tb_departamento.nm_departamento%TYPE := 'Desconhecido',
p_localizacao IN tb_departamento.id_departamento.id_localizacao%TYPE DEFAULT 1700)
IS
BEGIN
  INSERT INTO tb_departamento(id_departamento, nm_departamento, id_localizacao)
  VALUES (sq_departamento.NEXTVAL, p_nome, p_localizacao);
END sp_adiciona_depto;

-- Testando

EXECUTE sp_adiciona_depto;

EXECUTE sp_adiciona_depto('Publicidade', p_localizacao => 1200);

EXECUTE sp_adiciona_depto(p_localizacao => 1200);

-- Chamando um Procedure dentro de outro Procedure

CREATE OR REPLACE PROCEDURE sp_processando_emp
IS
  CURSOR emp_cursor IS
    SELECT id_empregado
    FROM tb_empregado;
BEGIN
  FOR emp_rec IN emp_cursor
  LOOP
    sp_incremento_salario(emp_rec.id_empregado, 10);
  END LOOP;
  COMMIT;
END sp_processando_emp;

-- 

DECLARE
  v_id_emp NUMBER;
BEGIN
  SELECT id_empregado INTO v_id_emp
  FROM tb_empregado
  WHERE nome = 'Geraldo'
  AND sobrenome = 'Neto';

  sp_remover_empregado(v_id_emp);
END;

CREATE OR REPLACE PROCEDURE sp_remover_empregado
(p_id_empregado NUMBER, p_msg OUT VARCHAR2)
IS
BEGIN
  DELETE
  FROM tb_empregado
  WHERE id_empregado = p_id_empregado;

  
