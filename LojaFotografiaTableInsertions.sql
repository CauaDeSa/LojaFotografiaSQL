INSERT INTO Telefone
VALUES ('111111', 'comercial'), ('222222', 'celular'), ('333333', 'residencial'), ('444444', 'comercial'), ('555555', 'celular'), ('666666', 'residencial');

INSERT INTO Endereco
VALUES ('148005', ' araraquara', 'sp', 'dr jose augusto', 'rua', 'maria luiza', 900, 'casa'), ('128000', 'ibate', 'sp', 'fernando criscuolo', 'rua', 'jd dos nerds', 1000, 'casa');

INSERT INTO Departamento
VALUES ('HRT', 'Edinilson'), ('FRS', 'Endenelson');

INSERT INTO Funcionario
VALUES ('Caua', 'Mae', '444444', '148005', 'HRT', 'caixa'), ('igor', 'pai', '111111', '128000', 'FRS', 'caixa');

INSERT INTO Cliente (nome, CEP, fone1, fone2, fone3)
VALUES ('Carmo', '148005', '111111', '222222', '333333'), ('Elisangela', '148005', '444444', '555555', '666666');

INSERT INTO PessoaFisica
VALUES (11, '604528962', '50196098869', '14091982', 'F');

INSERT INTO PessoaJuridica
VALUES (10, '149029123', '388108598', 'Carmo');

INSERT INTO Produto 
VALUES ('tripe', 20.00, 100.00, 20, 5), ('camera', 400.00, 800.00, 8, 2);

INSERT INTO TipoProduto 
VALUES ('tripe', 'acessorio'), ('camera', 'aparelho');

INSERT INTO Venda
VALUES ('cartao', 100.00), ('dinheiro', 800.00);

INSERT INTO VendaProduto
VALUES (1, 3, 1), (2, 4, 1);

INSERT INTO VendaRealizada
VALUES (9, 11, 1), (10, 10, 2);

INSERT INTO DataVenda
VALUES (1, 20012024), (2, 04052024);