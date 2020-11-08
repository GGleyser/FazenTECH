
-- drop DATABASE fazenda_bd;
-- CREATE database fazenda_bd;


-- drop table funcionaro, endereco, produto, tipo_produto;

create table producao_leite
(
    id int IDENTITY primary key,
    horario datetime not null,
    quantidade float default 0,
    id_animal int not null,
    id_funcionario int not null
);

create table animal
(
    id int IDENTITY primary key,
    horario_chegada datetime not null,
    raça char(30) not null,
    nascimento date not null,
    especie char(30) not null
);

create table colheita
(
    id int IDENTITY primary key,
    sacas int not null default 0,
    dia date not null,
    descricao char(100) null,
    id_produto int not null
);

create table produto
(
    id int IDENTITY primary key,
    nome char(30) not null,
    unidade_medida char(30) not null,
    preço_por_unidade real not null,
    descricao char(100) null,
    id_tipo_produto int not null
);

create table tipo_produto
(
    id int IDENTITY primary key,
    nome char(30) not null,
);

create table varejista
(
    id int IDENTITY primary key,
    nome char(30) not null,
    cnpj char(20) unique not null,
    email char(80) not null,
    tel bigint not null,
    id_endereco int not null
);

create table venda
(
    id int IDENTITY primary key,
    -- item char(30) not null,
    quantidade int not null default 0,
    preço real not null,
    horario datetime not null,
    descricao char(100) null,
    id_produto int not null,
    id_varejista int not null
);

create table equipamento
(
    id int IDENTITY primary key,
    nome char(30) not null,
    valor real not null,
    descricao char(100) null
);

create table funcionario 
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

create table plantio
(
    id int IDENTITY primary key,
    quantidade bigint not null,
    dia date not null,
    descricao char(100) null,
    id_produto int not null
);


ALTER table funcionario
ADD CONSTRAINT fk_endereco_funcionario FOREIGN KEY (id_endereco)
REFERENCES endereco(id);

-- varejista
ALTER table varejista
ADD CONSTRAINT fk_endereco_varegista FOREIGN KEY (id_endereco)
REFERENCES endereco(id);

-- venda varejista
ALTER table venda
ADD CONSTRAINT fk_venda_varegista FOREIGN KEY (id_varejista)
REFERENCES varejista(id);

-- venda produto
ALTER table venda
ADD CONSTRAINT fk_venda_tipo FOREIGN KEY (id_produto)
REFERENCES produto(id);

-- produto tipo
ALTER table produto
ADD CONSTRAINT fk_produto_tipo_produto FOREIGN KEY (id_tipo_produto)
REFERENCES tipo_produto(id);

-- colheita produto
ALTER table colheita
ADD CONSTRAINT fk_colheita_produto FOREIGN KEY (id_produto)
REFERENCES produto(id);

-- plantio produto
ALTER table plantio
ADD CONSTRAINT fk_plantio_produto FOREIGN KEY (id_produto)
REFERENCES produto(id);

-- producao_leite
ALTER table producao_leite
ADD CONSTRAINT fk_ordenha_animal FOREIGN KEY (id_animal)
REFERENCES animal(id);

ALTER table producao_leite
ADD CONSTRAINT fk_ordenha_funcionario FOREIGN KEY (id_funcionario)
REFERENCES funcionario(id);