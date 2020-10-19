
drop DATABASE fazenda-bd;
CREATE database fazenda-bd;


drop table funcionaro, endereco, produto, tipo_produto;


create table producao_leite
(
    id int IDENTITY primary key,
    codigo_animal int not null,
    horario datetime not null,
    quantidade int default 0,
);


create table produto
(
    id int IDENTITY primary key,
    nome char(30) not null,
    quantidade int not null default 0,
    preço real not null,
    descricao char(100) null,
    id_tipo int not null
);


create table tipo_produto
(
    id int IDENTITY primary key,
    nome char(30) not null,
);


create table verejista
(
    id int IDENTITY primary key,
    nome char(30) not null,
    cnpj char(20) unique not null,
    tel int not null,
    id_endereco int not null
);


create table venda
(
    id int IDENTITY primary key,
    item char(30) not null,
    quantidade int not null default 0,
    preço real not null,
    id_tipo int not null,
    id_varegista int not null,
    descricao char(100) null
);


create table equipamento
(
    id int IDENTITY primary key,
    nome char(30) not null,
    valor real not null,
    descricao char(100) null
);


create table funcionaro 
(
    id int IDENTITY primary key,
    nome char(30) not null,
    sobrenome char(30) not null,
    cpf char(20) unique not null,
    tel int not null,
    nascimento date not null,
    salario real not null default 0,
    id_endereco int not null
);


create table endereco
(
    id int IDENTITY primary key,
    logradouro char(30) not null,
    numero int not null,
    cep int null,
    municipio char(30) not null,
    uf char(2) not null,
);


ALTER table funcionario
ADD CONSTRAINT fk_endereco_funcionario FOREIGN KEY (id_endereco)
REFERENCES endereco(id);


select * from endereco;
insert into endereco
values
    ('rua almeida', 255, '25205525', 'belo horizonte', 'MG'),
    ('rua cristal', 40, '25205525', 'laga santa', 'MG'),
    ('rua do ouro', 65, '25205525', 'sabara', 'MG');


select * from funcionario;
insert into funcionario
values
    ('daniel', 'S', '02000004205', '33925252', '15/02/1989', 1200,00, 1),
    ('rafael', 'P', '02000005072', '33556672', '20/05/1979', 1250,00, 2),
    ('samuel', 'G', '32000005005', '34455622', '26/08/1996', 3100,00, 3);


-- select distinct nome, saldo, uf, municipio from 
-- cliente cl inner join conta co on (co.saldo > 1000 and cl.id_conta = co.id)
-- inner join endereco en on (cl.id_endereco = en.id);