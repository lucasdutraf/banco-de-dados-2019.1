INSERT INTO PROPRIETARIO (cpf, nome, logradouro, numero, complemento, bairro, cidade, uf, cep, sexo, dtNascimento)
VALUES(123456789, 'jose', 'logradouro', 10, 'casa 8', 'aguas', 'df', 'c', 7778889, 'M', '1990-02-05');

INSERT INTO telefone (cpf, telefone) VALUES (123456789, 777788889);

INSERT INTO MODELO (nomeModelo, codModelo) VALUES ('corsa', 156234);

INSERT INTO CATEGORIA (codCategoria, nomeCategoria) VALUES (78, 'Categoria Aleatoria');

INSERT INTO VEICULO (codCategoria, cpf, placa, codModelo, numeroChassi, cor, ano) VALUES (78, 123456789, 'JHI1819', 156234, 'asdferw87954rw', 'preta', '1990-06-06');

INSERT INTO AGENTE (nome, matricula) VALUES ('Ronilson Lemos Silva', 132847);

INSERT INTO LOCAL (codLocal, latitude, longitude, velocidadePermitida) VALUES ('87561451', '87.584', '878.56', 80);

INSERT INTO TIPO_INFRACAO (codInfracao, descricao, valor) VALUES (84, 'Alta velocidade', '105.36');

INSERT INTO INFRACAO (idInfracao, placa, dataHora, codInfracao, codLocal, velocidadeAferida, matricula) VALUES (655, 'JHI1819', now(), 84, '87561451', 89, 132847);


INSERT INTO PROPRIETARIO (cpf, nome, logradouro, numero, complemento, bairro, cidade, uf, cep, sexo, dtNascimento)
VALUES(987654321, 'joao', 'logradouro b', 11, 'casa 7', 'aguas lindas', 'df', 'd', 7779998, 'M', '1990-02-05');

INSERT INTO telefone (cpf, telefone) VALUES (987654321, 777733339);

INSERT INTO MODELO (nomeModelo, codModelo) VALUES ('opala', 133332);

INSERT INTO CATEGORIA (codCategoria, nomeCategoria) VALUES (87, 'Categoria B');

INSERT INTO VEICULO (codCategoria, cpf, placa, codModelo, numeroChassi, cor, ano) VALUES (87, 987654321, 'JLI1819', 133332, 'asdferw87954rw', 'azul', '1990-06-08');

INSERT INTO AGENTE (nome, matricula) VALUES ('Ronaldo Lemos Silva', 147852);

INSERT INTO LOCAL (codLocal, latitude, longitude, velocidadePermitida) VALUES ('87561452', '90.584', '818.56', 100);

INSERT INTO TIPO_INFRACAO (codInfracao, descricao, valor) VALUES (71, 'Alta velocidade', '110.36');

INSERT INTO INFRACAO (idInfracao, placa, dataHora, codInfracao, codLocal, velocidadeAferida, matricula) VALUES (668, 'JLI1819', now(), 71, '87561452', 150, 147852);