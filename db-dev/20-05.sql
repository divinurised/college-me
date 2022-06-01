-- Usando um Procedure para selecionar o nome e o sobrenome dos usuários

CREATE OR REPLACE PROCEDURE sp_selecionar_empregado
(p_cursor OUT SYS_REFCURSOR)
IS
BEGIN
  OPEN p_cursor


--------------------------------------

LOOP
  FETCH v_cursor INTO v_nome, v_sobrenome;
  EXIT WHEN v_cursor%NOTFOUND;
    dbms_output.put_line(v_nome || '' || v_sobrenome);
  END LOOP

-----------------------------------------------

CREATE PROCEDURE sp_adiciona_depto_2
(p_nome, VARCHAR2, p_id_gerente, p_id_localizacao NUMBER)
IS
BEGIN
  INSERT INTO tb_departamento (id_departamento, nm_departamento, id_gerente, id_localizacao)
  VALUES (sp_departamento.NEXTVAL, p_nome, p_id_gerente, p_id_localizacao);
  dbms_output.put_line('Departamento adicionado' || p_nome);

  EXCEPTION
    WHEN OTHERS THEN
      dbms_output.put_line('Erro: adicionado departamento' || p_nome)
    END sp_adiciona_depto_2;
    
