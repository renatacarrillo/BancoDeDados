-- criando o banco de dados da 2 lista de exercicios --
create database BancoDeDados1ListaDeExercicios2
go

-- acessando o banco --
use BancoDeDados1ListaDeExercicios2
go

-- criando tabela Professores --
create table Professores(
	CodigoProfessor int primary key,
	Nome varchar(25) not null,
	DataCadastro 
)
go

-- criando a tabela diciplinas --
create table Disciplinas(
	CodigoDisciplina int primary key,
	CodigoProfessor int not null,
	NomeDisciplina varchar(30) not null	 
) 
go

--relacionando as tabelas disciplinas e professores--
alter table Disciplinas
add constraint[FK_Disciplinas_Professores] foreign key (CodigoProfessor)
	references Professores(CodigoProfessor)
go

-- inserindo dados na tabela professores --
insert into Professores(CodigoProfessor,"Nome",DataCadastro)
values
	(1,'Rosana das Alturas','2019-04-09'),
	(11,'Pedro Gattes','2019-05-09'),
	(13,'Ademar Balela','2019-04-03'),
	(36,'Douglas Einsten','2019-05-12'),
	(34,'Sergio Macaia','2019-04-04'),
	(10,'Rita Cadilac','2019-04-15'),
	(18,'Iolanda Aguiar','2019-05-01'),
	(15,'Roberto Fernandes','2019-04-15'),
	(12,'Sergio Noriega','2019-05-10'),
	(23,'Chico Dito','2019-04-30'),
	(24,'Maria Bonita','2019-05-03'),
	(9, 'Juca Sampaio','2019-04-10'),
	(17, 'Fernando Pereira','2019-04-02'),
	(14, 'João Alves','2019-05-03'),
	(19, 'Paulo Souza','2019-04-10')
go

insert into Disciplinas
values 
	(1,1,'Exatas'),
	(2,11,'Exatas'),
	(3,13,'Exatas'),
	(4,36,'Exatas'),
	(5,34,'Exatas'),
	(6,10,'Exatas'),
	(7,18,'Humanas'),
	(8,15,'Humanas'),
	(9,12,'Humanas'),
	(10,23,'Humanas'),
	(11,24,'Humanas'),
	(12,9, 'Biologicas'),
	(13,17,'Biologicas'),
	(14,14,'Biologicas'),
	(15,19,'Biologicas')
go

select * from Disciplinas
go
select * from Professores
go	

select P.CodigoProfessor as 'Codigo do Professor',
		P.Nome as 'Nome do Professor',
		P.DataCadastro as 'Cadastrado em',
		D.CodigoDisciplina as 'Cod Disciplina',
		D.NomeDisciplina as 'Nome Disciplina'

from  Professores P Inner Join Disciplinas D 
		on P.CodigoProfessor = D.CodigoProfessor
order By [Nome Disciplina]
Go


select  P.CodigoProfessor as 'Codigo do Professor',
		P.Nome as 'Nome do Professor',
		P.DataCadastro as 'Cadastrado em',
		D.CodigoDisciplina as 'Cod Disciplina',
		D.NomeDisciplina as 'Nome Disciplina'

from  Professores P Inner Join Disciplinas D 
		on P.CodigoProfessor = D.CodigoProfessor
where P.CodigoProfessor > 10
order By [Nome Disciplina]

Go

select * from Disciplinas



