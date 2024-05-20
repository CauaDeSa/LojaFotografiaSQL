CREATE TABLE Telefone
(
	numero varchar(12) PRIMARY KEY,
	tipo varchar(12) NOT NULL,
);

CREATE TABLE Endereco 
(
	CEP varchar(8) PRIMARY KEY,
	cidade varchar(20) NOT NULL,
	estado varchar(20) NOT NULL,
	logradouro varchar(30) NOT NULL,
	tipoLogradouro varchar(7) NOT NULL,
	bairro varchar(20) NOT NULL,
	numero int NOT NULL,
	complemento varchar(20) NULL,
);

CREATE TABLE Departamento 
(
	sigla varchar(4) PRIMARY KEY,
	nomeResponsavel varchar(30) NOT NULL,
);

CREATE TABLE Funcionario 
(
	codigo int IDENTITY(1,1) PRIMARY KEY,
	nome varchar(20) NOT NULL,
	contato varchar(10) NULL,
	numero varchar(12) NULL,
	CEP varchar(8) NOT NULL,
	sigla varchar(4) NOT NULL,
	funcao varchar(10) NOT NULL,
	FOREIGN KEY (numero) REFERENCES Telefone(numero),
	FOREIGN KEY (CEP) REFERENCES Endereco(CEP),
	FOREIGN KEY (sigla) REFERENCES Departamento(sigla),
);

CREATE TABLE Cliente 
(
	codigo int IDENTITY(1,1) PRIMARY KEY,
	nome varchar(30) NOT NULL,
	CEP varchar(8) NOT NULL,
	fone1 varchar(12) NOT NULL,
	fone2 varchar(12) NOT NULL,
	fone3 varchar(12) NOT NULL,
	FOREIGN KEY (fone1) REFERENCES Telefone(numero),
	FOREIGN KEY (CEP) REFERENCES Endereco(CEP),

);

CREATE TABLE PessoaFisica
(
	codigo int NOT NULL,
	RG varchar(9) NOT NULL,
	CPF varchar(11) NOT NULL,
	dataNasc varchar(8) NOT NULL,
	sexo varchar(1) NOT NULL,
	FOREIGN KEY (codigo) REFERENCES Cliente(codigo),
);

CREATE TABLE PessoaJuridica
(
	codigo int NOT NULL,
	CNPJ varchar(14) NOT NULL,
	inscricaoEstadual varchar(9) NOT NULL,
	nomeResponsavel varchar(30) NOT NULL,
	FOREIGN KEY (codigo) REFERENCES Cliente(codigo),
);

CREATE TABLE Produto 
(
	codigoProduto int IDENTITY(1,1) PRIMARY KEY,
	descricao varchar(30) UNIQUE,
	precoCusto decimal(5,2) NOT NULL,  
	precoVenda decimal(5,2) NOT NULL,  
	qtdEstoque int NOT NULL,
	qtdMinima int NOT NULL,
);

CREATE TABLE TipoProduto
(
	descricao varchar(30) NOT NULL,
	tipo varchar(10) NOT NULL,
	FOREIGN KEY (descricao) REFERENCES Produto(descricao),
);

CREATE TABLE Venda 
(
	numeroVenda int IDENTITY(1,1) PRIMARY KEY,	
	condicaoPagamento varchar(10) NOT NULL,
	valorTotal decimal(5,2) NOT NULL,
);

CREATE TABLE VendaProduto
(
	numeroVenda int NOT NULL,
	codigoProduto int NOT NULL,
	quantidade int NOT NULL,
	FOREIGN KEY (numeroVenda) REFERENCES Venda(numeroVenda),
	FOREIGN KEY (codigoProduto) REFERENCES Produto(codigoProduto),
);

CREATE TABLE VendaRealizada
(
	codigoFuncionario int NOT NULL,
	codigoCliente int NOT NULL,
	numeroVenda int NOT NULL,
	FOREIGN KEY (codigoFuncionario) REFERENCES Funcionario(codigo),
	FOREIGN KEY (codigoCliente) REFERENCES Cliente(codigo),
	FOREIGN KEY (numeroVenda) REFERENCES Venda(numeroVenda),
);

CREATE TABLE DataVenda
(
	numero int NOT NULL,
	dataVenda varchar(8) NOT NULL,
	FOREIGN KEY (numero) REFERENCES Venda(numeroVenda),
);