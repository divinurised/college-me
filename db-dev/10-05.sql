-- Cursores Explícitos
-- Exemplo 01

SET serveroutput ON
DECLARE
  CURSOR cur_emp (p_id_emp NUMBER) IS
    SELECT id_empregado, nome, sobrenome
    FROM tb_empregado
    WHERE id_empregado = p_id_emp;
  
  v_id_emp tb_empregado.id_empregado%TYPE;
  v_nome tb_empregado.nome%TYPE;
  v_sobrenome tb_empregado.sobrenome%TYPE;
BEGIN
  OPEN cur_emp(100);
  FETCH cur_emp INTO v_id_emp, v_nome, v_sobrenome;

  dbms_output.put_line('O nome do empregado com ID' || v_id_emp || ' é:' || v_nome || '' || v_sobrenome);
  CLOSE cur_emp;

  OPEN cur_emp(101);
  FETCH cur_emp INTO v_id_emp, v_nome, v_sobrenome;

  dbms_output.put_line('O nome do empregado com ID' || v_id_emp || ' é:' || 'v_nome' || '' || v_sobrenome);
  CLOSE cur_emp;
END;

-- Exemplo de tratamento de Exception (erros)

SET serveroutput ON
DECLARE
  v_id_cliente tb_clientes.id_cliente%TYPE := 8;
  v_nome tb_clientes.nm_cliente%TYPE;
  v_endereco tb_clientes.endedereco%TYPE;
BEGIN
  SELECT nm_cliente, endedereco INTO v_nome, v_endereco
  FROM tb_clientes
  WHERE id_cliente = v_id_cliente;

  dbms_output.put_line('Nome:' || v_nome);
  dbms_output.put_line('Endereço' || v_endereco);

  EXCEPTION
    WHEN no_data_found THEN
      dbms_output.put_line('Cliente inexistente')
    WHEN others THEN 
      dbms_output.put_line('Erro! Tente novamente')
END;

-- Exemplo 02

SET serveroutput ON
DECLARE
  v_nome tb_empregado.nome%TYPE;
BEGIN
  SELECT nome INTO v_nome
  FROM tb_empregado
  WHERE nome = 'David';

  EXCEPTION
    WHEN too_many_rows THEN
      dbms_output.put_line('A consulta retornou mais que uma linha. Utilize coleções ou cursores');
END;

-- Exemplo 03

SET serveroutput ON
DECLARE
  v_nome NUMBER
BEGIN
  SELECT nome INTO v_nome
  FROM tb_empregado
  WHERE ROWNUM = 1;

  EXCEPTION
    WHEN others THEN
      dbms_output.put_line('Ocorreu um erro!' || SQLERRM);
END;

-- Exceções customizadas

SET serveroutput ON
DECLARE
  v_id_cliente tb_clientes.cliente%TYPE := &id_cliente;
  v_nome tb_clientes.nm_cliente%TYPE;
  v_endereco tb_clientes.endedereco%TYPE;

  ex_id_invalido EXCEPTION;
BEGIN
  IF v_id_cliente <= 0 THEN
    RAISE ex_id_invalido;
  ELSE
    SELECT nm_cliente, endedereco INTO v_nome, v_endereco
    FROM tb_clientes
    WHERE id_cliente = v_id_cliente;

    dbms_output.put_line('Nome:' || v_nome);
    dbms_output.put_line('Endereço' || v_endereco);
  END IF;
  EXCEPTION
    WHEN ex_id_invalido THEN
      dbms_output.put_line('ID deve ser maior que zero!');
    WHEN no_data_found THEN
      dbms_output.put_line('Nenhum cliente encontrado!');
    WHEN others THEN
      dbms_output.put_line('Erro! Tente novamente.');
END;

-- Exceção pré definida com mensagem personalizada

SET serveroutput ON
DECLARE
  v_nome tb_empregado.nome%TYPE;
BEGIN
  SELECT nome INTO v_nome
  FROM tb_empregado
  WHERE nome = 'David';

  EXCEPTION
    WHEN too_many_rows THEN
    dbms_output.put_line(SQLERRM);
    RAISE_APPLICATION_ERROR(-20000, 'Erro adaptado. Não é possível gravar valores de múltiplas linhas em uma variável escalar');
END;


