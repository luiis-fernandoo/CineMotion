
create database CineMotion;
use CineMotion;

create table Ator(
nome VARCHAR(50),
nacionalidade VARCHAR(50),
id_ator INT auto_increment not null primary key);

create table Filme(
titulo VARCHAR(60) not null,
dt_lancamento date not null,
genero VARCHAR(30) not null,
duracao VARCHAR(11) not null,
diretor VARCHAR(40) not null,
descricao VARCHAR(800) not null,
nome_img VARCHAR(100) not null,
id_filme int auto_increment not null primary key);

create table atua(
id_atua int auto_increment not null primary key,
papel VARCHAR(50),
premiacoes VARCHAR(50),
id_ator int,
id_filme int,
foreign key (id_filme) references Filme(id_filme),
foreign key(id_ator) references Ator(id_ator));

create table Cliente(
nome VARCHAR(50) not null,
idade VARCHAR(8) not null,
sexo VARCHAR(8) not null,
email VARCHAR(60) not null,
telefone VARCHAR(20) not null,
cpf VARCHAR(20) not null primary key,
senha VARCHAR(20) not null);

create table Sessao(
sala int not null,
num_sessao int not null,
data_sessao VARCHAR(20) not null,
quantIngMax int not null,
horario VARCHAR(20) not null,
id_filme int,
cpf VARCHAR(20),
id_sessao int not null auto_increment primary key,
foreign key(id_filme) references Filme(id_filme),
foreign key(cpf) references Cliente(cpf));

create table Ingresso(
id_ingresso int not null auto_increment primary key,
preco double,
tipo VARCHAR(50),
id_sessao int,
foreign key(id_sessao) references Sessao(id_sessao));


insert into Filme(titulo, dt_lancamento, genero, duracao, diretor, descricao, nome_img) values ('O Castelo Animado', '20050715', 'Fantasia/Aventura', '1h 59m
', 'Hayao Miyazaki', 'Uma bruxa lança uma terrível maldição sobre a jovem Sophie transformando-a numa velha de 90 anos. Desesperada, ela embarca numa odisseia em busca do Castelo Andante, onde reside um misterioso feiticeiro que poderá ajudá-la a reverter o feitiço.', 'Castelo Animado.jpg');

insert into Ator(nome, nacionalidade) values ('Chieko Baisho', 'Japonesa');

insert into Atua(papel, premiacoes) values ('Sophie Hatler', 'Melhor animação');

insert into Filme(titulo, dt_lancamento, genero, duracao, diretor, descricao, nome_img) values ('A Viagem de Chihiro', '20030718', 'Fantasia/Aventura', '2h 5m
', 'Hayao Miyazaki', 'Chihiro e seus pais estão se mudando para uma cidade diferente. A caminho da nova casa, o pai decide pegar um atalho. Eles se deparam com uma mesa repleta de comida, embora ninguém esteja por perto. Chihiro sente o perigo, mas seus pais começam a comer. Quando anoitece, eles se transformam em porcos. Agora, apenas Chihiro pode salvá-los', 'A viagem de Chihiro.jpg');

insert into Ator(nome, nacionalidade) values ('Rumi Hiiragi', 'Japonesa');

insert into Atua(papel, premiacoes) values ('Chihiro Ogino', 'Melhor animação');

insert into Filme(titulo, dt_lancamento, genero, duracao, diretor, descricao, nome_img) values ('Harry Potter e o Prisioneiro de Azkaban', '20040604', 'Aventura, Terror, Suspense', '2h 21m', 'Alfonso Cuarón', 'O terceiro ano de Harry Potter em Hogwarts começa mal quando ele descobre que o assassino Sirius Black escapou da prisão de Azkaban e está empenhado a matá-lo. Por causa disso, um enxame de Dementadores desagradáveis ​​é enviado para proteger a escola, enquanto um novo professor misterioso ajuda Harry aprender a defender-se.', 'Harry Potter.jfif');

insert into Ator(nome, nacionalidade) values ('Daniel Radcliffe', 'Britânico');

insert into Atua(papel, premiacoes) values ('Harry Potter', 'MTV Movie Award');

insert into Filme(titulo, dt_lancamento, genero, duracao, diretor, descricao, nome_img) values  ('Invocação do Mal 2', '20160609', 'Terror/Thriller', '2h 14m', 'James Wan', 'Os famosos demonologistas Lorraine e Ed Warren viajam até o norte de Londres. Lá, eles ajudam uma mãe solteira que cria quatro filhos sozinha em uma casa atormentada por espíritos malignos.', 'Invocação do mal.jfif');

insert into Ator(nome, nacionalidade) values ('Vera Farmiga e Patrick Wilson', 'Estadunidenses');

insert into Atua(papel, premiacoes) values ('Lorraine e Ed Warren', ' ');

insert into Sessao(sala, num_sessao, data_sessao, quantIngMax, horario) values ('1', '10001', '01/02/2023', '40', '15:00');

insert into Ingresso(preco) values ('35.00');

insert into Sessao(sala, num_sessao, data_sessao, quantIngMax, horario) values ('2', '10002', '02/02/2023', '40', '17:00');

insert into Ingresso(preco) values ('30.00');

insert into Sessao(sala, num_sessao, data_sessao, quantIngMax, horario) values ('1', '10003', '03/02/2023', '40', '20:00');

insert into Ingresso(preco) values ('35.00');

insert into Sessao(sala, num_sessao, data_sessao, quantIngMax, horario) values ('2', '10004', '05/02/2023', '40', '17:00');

insert into Ingresso(preco) values ('30.00');

insert into Cliente(nome, idade, sexo, email, telefone, cpf, senha) values ('Administrador', '', '', 'admin@gmail.com', '', '', '123');