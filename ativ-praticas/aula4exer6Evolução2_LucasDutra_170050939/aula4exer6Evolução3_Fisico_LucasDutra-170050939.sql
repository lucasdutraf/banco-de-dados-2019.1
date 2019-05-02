CREATE TABLE PROPRIETARIO (
	cpf bigint(11) NOT NULL,
    nome varchar(50) NOT NULL,
    logradouro varchar(100) NOT NULL,
    numero integer NOT NULL,
    complemento varchar(100) NOT NULL,
    bairro varchar(50) NOT NULL,
    cidade varchar(50) NOT NULL,
    uf char(2) NOT NULL,
    cep integer(8) NOT NULL,
    sexo char(1) NOT NULL,
    dtNascimento date NOT NULL,
    CONSTRAINT PROPRIETARIO_PK PRIMARY KEY (cpf)
);
CREATE TABLE telefone (
    cpf BIGINT(11) NOT NULL,
    telefone BIGINT(11) NOT NULL,
	CONSTRAINT telefone_PK PRIMARY KEY (cpf, telefone),
	CONSTRAINT telefone_PROPRIETARIO_FK FOREIGN KEY (cpf) 
		REFERENCES PROPRIETARIO (cpf)
        ON DELETE CASCADE
);
CREATE TABLE MODELO (
    nomeModelo varchar(50) NOT NULL,
    codModelo integer(6) NOT NULL,
	CONSTRAINT MODELO_PK PRIMARY KEY (codModelo)
);
CREATE TABLE CATEGORIA(
    codCategoria integer(2) NOT NULL,
    nomeCategoria varchar(50) NOT NULL,
	CONSTRAINT CATEGORIA_PK PRIMARY KEY (codCategoria)
);
CREATE TABLE VEICULO (
	codCategoria integer(2),
    cpf BIGINT(11),
    placa char(7) NOT NULL,
    codModelo integer(6),
    numeroChassi char(17) NOT NULL,
    cor varchar(20) NOT NULL,
    ano date NOT NULL,
    CONSTRAINT VEICULO_PROPRIETARIO_FK FOREIGN KEY (cpf) 
		REFERENCES PROPRIETARIO (cpf)
        ON DELETE CASCADE,
    CONSTRAINT VEICULO_MODELO_FK FOREIGN KEY (codModelo) 
		REFERENCES MODELO (codModelo)
        ON DELETE CASCADE,
    CONSTRAINT VEICULO_CATEGORIA_FK FOREIGN KEY (codCategoria) 
		REFERENCES CATEGORIA (codCategoria)
        ON DELETE CASCADE,
    CONSTRAINT VEICULO_PK PRIMARY KEY (placa)
);
CREATE TABLE AGENTE (
    nome varchar(50) NOT NULL,
    matricula bigint NOT NULL,
	CONSTRAINT AGENTE_PK PRIMARY KEY (matricula)
);
CREATE TABLE LOCAL (
    codLocal varchar(20) NOT NULL,
    latitude decimal(8, 6) NOT NULL,
    longitude decimal(9, 6) NOT NULL,
    velocidadePermitida integer(3) NOT NULL,
	CONSTRAINT LOCAL_PK PRIMARY KEY (codLocal)
);
CREATE TABLE TIPO_INFRACAO (
    codInfracao integer NOT NULL,
    descricao varchar(50) NOT NULL,
    valor decimal(6,2) NOT NULL,
	CONSTRAINT TIPO_INFRACAO_PK PRIMARY KEY (codInfracao)
);

CREATE TABLE INFRACAO (
	idInfracao bigint NOT NULL,
    placa char(7),
    dataHora timestamp NOT NULL,
    codInfracao integer,
    codLocal varchar(20),
    velocidadeAferida integer(3) NOT NULL,
    matricula bigint,
    CONSTRAINT INFRACAO_VEICULO_FK FOREIGN KEY (placa) 
		REFERENCES VEICULO (placa)
		ON DELETE CASCADE,
    CONSTRAINT INFRACAO_TIPO_INFRACAO_FK FOREIGN KEY (codInfracao) 
		REFERENCES TIPO_INFRACAO (codInfracao)
        ON DELETE CASCADE,
    CONSTRAINT INFRACAO_LOCAL_FK FOREIGN KEY (codLocal) 
		REFERENCES LOCAL (codLocal)
        ON DELETE CASCADE,
    CONSTRAINT INFRACAO_AGENTE_FK FOREIGN KEY (matricula)
		REFERENCES AGENTE (matricula)
        ON DELETE CASCADE,
    CONSTRAINT INFRACAO_PK PRIMARY KEY (idInfracao)
);