# Davi Alcântara, 22793

# Exercício 01

```sql
SET serveroutput ON
DECLARE
  v_primeiro NUMBER := &;
  v_segundo NUMBER := &;
  v_resposta VARCHAR2(30)
BEGIN
  IF v_primeiro > v_segundo THEN
    v_resposta := 'Primeiro é maior do que o segundo'
  ELSE IF v_primeiro < v_segundo THEN
    v_resposta := 'Primeiro é menor do que o segundo'
  ELSE IF v_primeiro = v_segundo THEN
    v_resposta := 'Primeiro é o mesmo que o segundo'
  END IF;

  dbms_output.putline(v_resposta)
END;
```

# Exercício 02

```sql
SET serveroutput ON
DECLARE
  v_number NUMBER := &;
  v_counter NUMBER := 1;
BEGIN
  WHILE v_counter < v_number LOOP
    dmbs_output.putline('Programação com Banco de Dados');
  END LOOP;
END;
```

# Exercício 03

```sql
SET serveroutput ON
DECLARE
  v_number NUMBER := &;
  v_counter NUMBER := 1;
BEGIN
  IF v_number < 0 THEN
    dbms_output.putline('O valor não pode ser negativo')
  ELSE
    WHILE v_counter < v_number LOOP
    dmbs_output.putline('Programação com Banco de Dados');
    END LOOP;
  END IF;
END;
```

# Exercício 04

Instruções DDL não podem ser executadas diretamente em um bloco PL/SQL

# Exercício 05

Quando fazemos uma query no banco de dados usamos a cláusula INTO para inserir os dados em variáveis, dessa forma:

```sql
...
  SELECT nome, sobrenome INTO v_nome, v_sobrenome FROM tb_empregados
...
```

# Exercício 06

A variável 'job' deve ser uma chave primário pois pode haver mais de um registro com o valor 'CLERK'.

# Exercício 07

As variáveis com o nome 'job' não podem ser iguais, se não a verificação é válida para todos os casos, alterando todos os registros da tabela.
