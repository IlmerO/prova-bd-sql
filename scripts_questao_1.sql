----Questão 1
SELECT nome, marca, tipo FROM `impressoras`;

--Questão 2
SELECT pessoas.nome, cargo.nome, salario FROM `funcionarios`, `pessoas`, `cargo`
JOIN funcionarios.pessoas_id = pessoas.id AND funcionarios.cargo_id = cargo.id;

--Questão 3
SELECT cidade FROM `endereco`
JOIN atendimento ON atendimento.clientes_id = endereco.pessoas_id
WHERE atendimento.clientes_id = endereco.pessoas_id;

--Questão 4
SELECT impressoras.nome, pessoas.nome, num_paginas, data, valor FROM `atendimento` --As informações dos detalhes são, nome do cliente, impressora usada, numero de paginas, data e o valor
JOIN impressoras ON impressoras.id = atendimento.impressoras_id
JOIN pessoas ON pessoas.id = atendimento.clientes_id
WHERE impressoras.id = atendimento.impressoras_id AND pessoas.id = atendimento.clientes_id;

--Questão 5
SELECT pessoas.nome FROM `pessoas`
JOIN atendimento ON atendimento.clientes_id = pessoas.id
WHERE YEAR(atendimento.data) = 2015 AND MONTH(atendimento.data) = 12;

--Questão 6


--Questão 7
SELECT SUM(atendimento.num_paginas), impressoras.nome FROM `atendimento`
JOIN `impressoras` ON impressoras.id = atendimento.impressoras_id
WHERE YEAR(atendimento.data) = 2015;

--Questão 8
SELECT SUM(atendimento.valor),YEAR(atendimento.data) FROM `atendimento`
WHERE atendimento.data
GROUP BY (YEAR(atendimento.data)) DESC;

--Questão 9
SELECT SUM(atendimento.valor),MONTH(atendimento.data) FROM `atendimento`
WHERE atendimento.data
GROUP BY (MONTH(atendimento.data)) DESC;

--Questão 10
SELECT pessoas.nome, SUM(atendimento.valor) FROM `atendimento`
JOIN `pessoas` ON pessoas.id = atendimento.funcionarios_id
WHERE pessoas.id = atendimento.funcionarios_id;
GROUP BY valor DESC;

--Questão 11
SELECT pessoas.nome, SUM(atendimento.valor) FROM `atendimento`
JOIN `pessoas` ON pessoas.id = atendimento.funcionarios_id
WHERE pessoas.id = atendimento.funcionarios_id
GROUP BY valor DESC;
