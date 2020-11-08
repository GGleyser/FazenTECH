-- select * from endereco;
insert into endereco
values
    ('rua almeida', 255, '25205525', 'belo horizonte', 'MG'),
    ('rua cristal', 40, '25205525', 'laga santa', 'MG'),
    ('rua 10', 79, '24675525', 'laga santa', 'MG'),
    ('rua janeiro', 201, '36205525', 'laga santa', 'MG'),
    ('rua do prata', 65, '97205525', 'vespasiano', 'MG');


-- select * from funcionario;
insert into funcionario
values
    ('daniel', 'S', '02000004205', '33925252', '15/02/1989', 1200.00, 1),
    ('rafael', 'P', '02000005072', '33556672', '20/05/1979', 1250.00, 1),
    ('samuel', 'G', '32000005005', '34455622', '26/08/1996', 3100.00, 2);


-- select * from animal;
insert into animal 
values
    ( '2020-06-10 14:10:00', 'raça', '10-06-2014', 'Bovino'),
    ( '2020-06-10 14:10:00', 'raça', '10-06-2014', 'Bovino'),
    ( '2020-06-10 14:10:00', 'raça', '10-06-2014', 'Bovino');


-- select * from tipo_produto
insert into tipo_produto
values 
    ('grãos'),('leite'),('derivados do leite');


-- select * from produto;
insert into produto 
values
    ('café', 'sacas', 18.00, '', 1),
    ('queijo', 'kg', 12.00, '', 3),
    ('soja', 'sacas', 20.00, '', 1);


-- select * from producao_leite;
insert into producao_leite 
values
    ( '2020-06-10 07:00:00', 10.5, 1, 1),
    ( '2020-06-10 07:10:00', 6.2, 3, 2),
    ( '2020-06-10 07:30:00', 8.6, 2, 3);


-- select * from varejista;
insert into varejista 
values
    ('Carlos', '000002000011', 'carlosrevendedor@gmail.com', 3300224455, 3),
    ('João', '04502000029', 'joaovendedor@gmail.com', 2303524677, 4),
    ('Renata', '367002000030', 'carlosrevendedor@gmail.com', 3322219805, 5);



-- select * from plantio;
insert into plantio 
values
    (600, '2014-01-10', '', 1),
    (580, '2014-01-11', '', 1),
    (300, '2014-01-12', '', 3);


-- select * from colheita;
insert into colheita 
values
    (600, '2014-06-10', '', 1),
    (580, '2014-06-11', '', 1),
    (300, '2014-06-12', '', 3);


-- select * from venda;
insert into venda 
values
    (200, 20.00, '2020-08-10 14:00:00', '', 1, 1),
    (100, 25.00, '2020-08-12 09:10:00', '', 3, 3),
    (400, 32.00, '2020-08-10 08:35:00', '', 2, 2);


-- select * from equipamento;
insert into equipamento
values 
    ('pá', 30.00, ''),
    ('rastelo', 30.00, ''),
    ('roçadeira', 3000.00, '');


-- selecionar as vendas totais de produtos
select v.id, v.quantidade, v.preço, v.horario, p.nome as [produto], vj.nome as [varegista], vj.cnpj, 
p.preço_por_unidade*v.quantidade as [total] 
from venda v inner join varejista vj on (vj.id = v.id_varejista) 
inner join produto p on (p.id = v.id_produto) order by v.id;

-- select * from equipamento; consulta o valor gasto
select sum(e.valor) as [gastos com equipamento] from equipamento e;

-- selecionar as vacas que deram menos leite e quem trata delas
select pl.quantidade,  a.id as [código do animal], a.raça, pl.horario, f.nome from producao_leite pl inner join animal a on pl.id_animal = a.id inner join funcionario f on pl.id_funcionario = f.id order by pl.quantidade asc;

-- colheita
select tp.nome as [tipo], p.nome , c.sacas, p.preço_por_unidade*c.sacas as [total] from colheita c inner join produto p on c.id_produto = p.id inner join tipo_produto tp on tp.id = p.id_tipo_produto;