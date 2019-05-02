INSERT INTO ESPECIALIDADE (nomeEspecialidade, codEspecialidade) VALUES ('cardiologista', 5);
INSERT INTO possui (crm, codEspecialidade) VALUES (87456987, 5);
INSERT INTO MEDICO (crm, nome) VALUES (87456987, 'Josue Santos');
INSERT INTO PACIENTE (cpf, nome, idade, sexo, cidade, bairro, estado, cep, complemento) VALUES (252584475, 'Josse opo', 38, 'M', 'Alagoinhas', 'aguas', 'Bahia', 87956444, 'casa 4');
INSERT INTO CONSULTA (data, cpf, crm) VALUES ('2019-02-06', 252584475, 87456987);
INSERT INTO RECEITA (posologia, data, cpf, crm, idReceita) VALUES ('2x ao dia', '2019-02-06', 252584475, 87456987, 2);
INSERT INTO MEDICAMENTO (descricao, codMedicamento, nome) VALUES ('buclina', 744, 'Multivitaminico');
INSERT INTO telefone (cpf, telefone) VALUES (252584475, 40028922);
INSERT INTO contem (idReceita, codMedicamento) VALUES (2, 744);

INSERT INTO ESPECIALIDADE (nomeEspecialidade, codEspecialidade) VALUES ('urologista', 6);
INSERT INTO possui (crm, codEspecialidade) VALUES (12345678, 6);
INSERT INTO MEDICO (crm, nome) VALUES (12345678, 'Josevaldo Santos');
INSERT INTO PACIENTE (cpf, nome, idade, sexo, cidade, bairro, estado, cep, complemento) VALUES (123456789, 'Josseano opo', 39, 'M', 'Alagoinhas', 'aguas', 'Bahia', 87856444, 'casa 4');
INSERT INTO CONSULTA (data, cpf, crm) VALUES ('2019-02-07', 123456789, 12345678);
INSERT INTO RECEITA (posologia, data, cpf, crm, idReceita) VALUES ('3x ao dia', '2019-02-07', 123456789, 12345678, 3);
INSERT INTO MEDICAMENTO (descricao, codMedicamento, nome) VALUES ('buclinina', 745, 'Multivitaminico B');
INSERT INTO telefone (cpf, telefone) VALUES (123456789, 40028923);
INSERT INTO contem (idReceita, codMedicamento) VALUES (3, 745);