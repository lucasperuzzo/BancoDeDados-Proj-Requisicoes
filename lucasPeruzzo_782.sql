/*
PROJETO BANCO DE DADOS
*/

/*
Criar as seguintes tabelas:
- alunos
Variáveis:
	- aluno_id
	- nome_aluno
	- idade
	- bolsista
	- mensalidade
	
- turmas
Variáveis:
	- turma_id
	- nome_turma
	- professor_id
	- nome_professor
	- carga_horaria
	- dias_semana
	
- notas_freq
Variáveis:
	- turma_id
	- professor_id
	- aluno_id
	- frequencia
	- nota_projeto1
	- nota_projeto2
	- nota_prova
	- nps_prof
	
	
*/
	
drop table if exists alunos;
create table alunos (
	aluno_id serial primary key,
	nome_aluno varchar(50) not null,
	idade integer null default 0,
	bolsista char(3),
	mensalidade numeric(6,2) not null
);

	
drop table if exists turmas;
create table turmas (
	turma_id serial primary key,
	nome_turma varchar(50) not null,
	professor_id integer not null,
	nome_professor varchar(50) not null,
	carga_horaria integer null default null,
	dias_semana varchar(100) null default null
);

drop table if exists notas_freq;
create table notas_freq (
	turma_id integer not null,
	professor_id integer not null,
	aluno_id integer not null,
	frequencia integer null default 0,
	nota_projeto1 numeric(3,1) null default null,
	nota_projeto2 numeric(3,1) null default null,
	nota_prova numeric(3,1) null default null,
	nps_prof integer null default 0,
	
	check (frequencia between 0 and 100),
	check (nota_projeto1 between 0 and 10),
	check (nota_projeto2 between 0 and 10),
	check (nota_prova between 0 and 10),	
	check (nps_prof between 0 and 100)
);

/*
Preencher as tabelas com os seguintes dados:
*/
insert into alunos (aluno_id, nome_aluno, idade, bolsista, mensalidade)
values
	(0001, 'João Paulo', 20, 'Não', 600),
	(0002, 'Agatha Cristina', 28, 'Sim', 0),
	(0003, 'Sandro Silva', 35, 'Não', 300),
	(0004, 'Luiza Machado', 24, 'Não', 300),
	(0005, 'Amanda Oliveira', 27, 'Não', 600),
	(0006, 'Rafael Pereira', 44, 'Sim', 0),
	(0007, 'Lucas Pires', 18, 'Não', 600),
	(0008, 'Gustavo Carvalho', 21, 'Não', 300),
	(0009, 'Paulo Vitor', 33, 'Não', 300),
	(0010, 'Nathan Souza', 35, 'Não', 600),
	(0011, 'Julia Menezes', 19, 'Sim', 0),
	(0012, 'Cristiano Hencke', 27, 'Não', 600),
	(0013, 'Monique Santos', 24, 'Não', 300),
	(0014, 'Everton Alex', 24, 'Sim', 0),
	(0015, 'Alexandre Silva', 23, 'Não', 300),
	(0016, 'Pedro Luiz', 20, 'Não', 300),
	(0017, 'Cintia Rodrigues', 18, 'Não', 600),
	(0018, 'Amanda Machado', 29, 'Sim', 0),
	(0019, 'Gustavo Silva', 32, 'Sim', 0),
	(0020, 'Maria Antonia', 34, 'Não', 600),
	(0021, 'Gervasio Oliveira', 65, 'Não', 300),
	(0022, 'Lucas Silva', 30, 'Não', 300),
	(0023, 'Jessica Siqueira', 21, 'Sim', 0),
	(0024, 'Noah Reis', 18, 'Não', 600),
	(0025, 'Ingrid Silva', 18, 'Não', 600),
	(0026, 'Luiz Henrique', 22, 'Sim', 0),
	(0027, 'Antonio Pagano', 25, 'Não', 300),
	(0028, 'Wesley Sousa', 27, 'Não', 300),
	(0029, 'Marisa Santos', 27, 'Não', 300),
	(0030, 'Juliana Melo', 18, 'Não', 600),
	(0031, 'Bruno Kenji', 18, 'Sim', 0),
	(0032, 'Caroline Silva', 31, 'Não', 600),
	(0033, 'Gustavo Marques', 34, 'Não', 600),
	(0034, 'Vinicius Camargo', 25, 'Sim', 0),
	(0035, 'Gisele Marquez', 23, 'Não', 300),
	(0036, 'Jair Vieira', 21, 'Não', 600),
	(0037, 'Paulo Pinheiro', 22, 'Sim', 0),
	(0038, 'Rafael Costa', 30, 'Não', 600),
	(0039, 'Ricardo Novaes', 32, 'Não', 600),
	(0040, 'Sonia Cristina', 22, 'Não', 300),
	(0041, 'Luis antonio', 18, 'Sim', 0),
	(0042, 'Sofia Antonia', 24, 'Não', 600),
	(0043, 'Ana Maria', 26, 'Sim', 0),
	(0044, 'Julio Pieri', 20, 'Não', 600);

select * from alunos

insert into turmas (turma_id, nome_turma, professor_id, nome_professor, carga_horaria, dias_semana)
values
	(0001, 'Python',         0001, 'Cleber Silva',   80,  'Segunda | Quarta'),
	(0002, 'Data Science',   0002, 'Pedro Henrique', 120, 'Segunda | Quarta | Sexta'),
	(0003, 'Python',         0001, 'Cleber Silva',   80,  'Terça | Quinta'),
	(0004, 'Banco de Dados', 0003, 'Anderson Sousa', 60,  'Segunda | Quarta'),
	(0005, 'Python',         0001, 'Cleber Silva',   80,  'Sábado'),
	(0006, 'Banco de Dados', 0003, 'Anderson Sousa', 60,  'Terça | Quinta'),
	(0007, 'Data Science',   0002, 'Pedro Henrique', 120, 'Sábado');


insert into notas_freq(turma_id, professor_id, aluno_id, frequencia, nota_projeto1, nota_projeto2, nota_prova, nps_prof)
values
	(0001, 0001, 0001, 90, 8, 10, 7, NULL),
	(0001, 0001, 0002, 95, 10, 9, 10, 90),
	(0001, 0001, 0003, 85, 10, 8.5, 8, 92),
	(0001, 0001, 0004, 100, 9, 9.5, 9.5, 88),
	(0001, 0001, 0005, 100, 9.5, 10, 10, 94),
	(0001, 0001, 0006, 95, 8, 10, 9, 100),
	(0001, 0001, 0007, 90, 10, 7.5, 9, NULL), /* O valor da frequencia desse registro foi alterado de 190 para 90 para atender as restrições do banco de dados (foi considerado erro de digitação com o caractere 1)*/
	(0002, 0002, 0008, 70, 7, 7.5, 6.5, 75),
	(0002, 0002, 0009, 75, 9, 9, 9, 80),
	(0002, 0002, 0010, 100, 10, 10, 10, 90),
	(0002, 0002, 0011, 80, 8.5, 8, 8.5, 100),
	(0002, 0002, 0012, 95, 9, 10, 7.5, 95),
	(0002, 0002, 0013, 65, 10, 10, 10, 88),
	(0003, 0001, 0014, 100, 8, 10, 10, NULL),
	(0003, 0001, 0015, 80, 9.5, 9, 9, 92),
	(0003, 0001, 0016, 90, 9, 9.5, 10, 90),
	(0003, 0001, 0017, 90, 10, 9, 9, 88),
	(0003, 0001, 0018, 85, 9.5, 8, 10, 95),
	(0003, 0001, 0019, 75, 10, 9.5, 8, 87),
	(0003, 0001, 0020, 90, 9, 8.5, 8, 75),
	(0003, 0001, 0021, 95, 8, 10, 10, 91),
	(0004, 0003, 0001, 100, 10, 10, 10, 100),
	(0004, 0003, 0002, 85, 9.5, 8, 8, NULL),
	(0004, 0003, 0003, 95, 9, 9, 10, 84),
	(0004, 0003, 0004, 85, 8.5, 9, 8.5, 86),
	(0004, 0003, 0005, 80, 9, 7, 7.5, 88),
	(0004, 0003, 0006, 95, 9.5, 10, 9, 90),
	(0004, 0003, 0007, 90, 9, 9, 9.5, 95),
	(0005, 0001, 0022, 100, 10, 9.5, 10, 90),
	(0005, 0001, 0023, 100, 9.5, 10, 10, 100),
	(0005, 0001, 0024, 90, 10, 10, 9, 98),
	(0005, 0001, 0025, 100, 10, 10, 10, NULL),
	(0005, 0001, 0026, 100, 9, 9, 9.5, 100),
	(0005, 0001, 0027, 55, 10, 10, 10, 95),
	(0006, 0003, 0028, 100, 8, 10, 9.5, NULL),
	(0006, 0003, 0029, 80, 8.5, 9.5, 10, 85),
	(0006, 0003, 0030, 85, 9, 8, 8, 82),
	(0006, 0003, 0031, 90, 9, 7.5, 9, 85),
	(0006, 0003, 0032, 75, 8.5, 10, 9, NULL),
	(0006, 0003, 0033, 80, 7.5, 8, 7, 95),
	(0006, 0003, 0034, 35, 9, 3.5, 0, NULL),
	(0006, 0003, 0035, 80, 8, 8, 9.5, 84),
	(0007, 0002, 0036, 70, 7, 7.5, 6.5, 75),
	(0007, 0002, 0037, 75, 9, 9, 9, 80),
	(0007, 0002, 0038, 100, 10, 10, 10, 90),
	(0007, 0002, 0039, 80, 8.5, 8, 8.5, 100),
	(0007, 0002, 0040, 95, 9, 10, 7.5, 95),
	(0007, 0002, 0041, 60, 7, 10, 10, NULL),
	(0007, 0002, 0042, 80, 9, 8.5, 9, 80),
	(0007, 0002, 0043, 80, 8.5, 9, 9, 86),
	(0007, 0002, 0044, 60, 9, 9.5, 10, 94);
	
/*
Calcular a média do NPS dos professores (arredondado para duas casas),
ignorando as notas nulas e ordenando da maior média para a menor;
*/
select
	turmas.nome_professor,
	round(avg(nps_prof),2) as media_nps
from notas_freq
left join turmas on turmas.professor_id = notas_freq.professor_id
group by turmas.nome_professor
order by media_nps desc;

/*
Calcular a média final de cada um dos alunos de cada turma, sendo a média
calculada da seguinte forma: 0.3 * projeto1 + 0.3 * projeto2 + 0.4 * prova
*/
select
	turmas.nome_turma,
	alunos.nome_aluno,
	(0.3 * notas_freq.nota_projeto1 + 0.3 * notas_freq.nota_projeto2 + 0.4 * notas_freq.nota_prova) as media_final
from notas_freq
left join alunos on alunos.aluno_id = notas_freq.aluno_id
left join turmas on turmas.turma_id = notas_freq.turma_id 
group by turmas.turma_id,alunos.aluno_id, media_final
order by turmas.turma_id, media_final desc;

/*
Contar a quantidade de alunos que seriam reprovados por turma, sendo o criterio de reprovação
que a nota final (calculada no exercício anterior) seja menor 7 ou que a frequencia seja menor
que 70%. Ordene da turma com mais reprovados para a com menos
*/

select
	turmas.turma_id,
	turmas.nome_turma,
	count(*) as qtdade_reprovados
from notas_freq
left join turmas on turmas.turma_id = notas_freq.turma_id
where (0.3 * notas_freq.nota_projeto1 + 0.3 * notas_freq.nota_projeto2 + 0.4 * notas_freq.nota_prova) < 7 or notas_freq.frequencia < 70
group by turmas.turma_id
order by qtdade_reprovados desc



/*
Contar a quantidade de bolsista matriculados por turma
*/
select 
	turmas.nome_turma,
	count(*) as qtdade_bolsistas
from notas_freq
left join turmas on turmas.turma_id = notas_freq.turma_id
left join alunos on alunos.aluno_id = notas_freq.aluno_id	
where alunos.bolsista = 'Sim'
group by turmas.turma_id
order by turmas.turma_id

/*
Calcular a média de idade por turma (arredonda para 1 casa) e também a maior idade por turma
*/
select 
	turmas.nome_turma,
	round(avg(alunos.idade),1) as media_idade,
	max(alunos.idade) as maior_idade
from notas_freq
left join turmas on turmas.turma_id = notas_freq.turma_id
left join alunos on alunos.aluno_id = notas_freq.aluno_id
group by turmas.turma_id
order by turmas.turma_id

/*
Calcular o total faturado por turma, sendo o total faturado o valor
da mensalidade paga pelos alunos, Faça esse calculo agrupado por
turma_id e nome_turma
*/

/*
AGRUPADO POR turma_id
*/
select 
	turmas.nome_turma,
	sum(alunos.mensalidade) as total_faturado
from notas_freq
left join turmas on turmas.turma_id = notas_freq.turma_id
left join alunos on alunos.aluno_id = notas_freq.aluno_id
group by turmas.turma_id
order by turmas.turma_id

/*
AGRUPADO POR nome_turma
*/
select 
	turmas.nome_turma,
	sum(alunos.mensalidade) as total_faturado
from notas_freq
left join turmas on turmas.turma_id = notas_freq.turma_id
left join alunos on alunos.aluno_id = notas_freq.aluno_id
group by turmas.nome_turma
order by turmas.nome_turma

/*
Calcular quanto cada um dos professores receberam por turma.
O salário do professor é 5% do total das mensalidades * carga horário do curso

Dica: Você irá utilizar algo como AVG(carga_horaria) * SUM(0.05 * mensalidade)
*/
select
	turmas.nome_professor,
	turmas.turma_id,
	turmas.nome_turma,
	round(avg(turmas.carga_horaria)*sum(0.05*alunos.mensalidade),2) as salario_prof_por_turma
from notas_freq
left join turmas on turmas.turma_id = notas_freq.turma_id
left join alunos on alunos.aluno_id = notas_freq.aluno_id
group by turmas.professor_id, turmas.turma_id
order by turmas.nome_professor, turma_id


/*
Utilizando a variável dias_semana, que representa os dias que aconteciam as aulas,
calcule a quantidade de alunos por dias_semana ordenando da maior para a menor 
quantidade;
*/

select
	distinct regexp_split_to_table(turmas.dias_semana, '\s.\s') as dias,
	count(notas_freq.aluno_id) as qtdade_alunos
from notas_freq
left join turmas on turmas.turma_id = notas_freq.turma_id
group by regexp_split_to_table(turmas.dias_semana, '\s.\s')
order by qtdade_alunos desc;




