CREATE TABLE empresa(
	id bigint(20) NOT NULL,
	cnpj varchar(255) NOT NULL,
	data_atualizacao datetime NOT NULL,
	data_criacao datetime NOT NULL,
	razao_social varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 

CREATE TABLE funcionario(
	id bigint(20) NOT NULL,
	cpf varchar(255) NOT NULL,
	data_atualizacao datetime NOT NULL,
	data_criacao datetime NOT NULL,
	email varchar(255) NOT NUll,
	nome varchar(255) NOT NUll,
	perfil varchar(255) NOT NULL,
	qtd_horas_almoco float DEFAULT NULL,
	qtd_horas_trabalho_dia float DEFAULT NULL,
	senha varchar(255) NOT NULL,
	valor_hora decimal(19,2) DEFAULT NULL,
	empresa_id bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE lancamento(
	id bigint(20) NOT NULL,
	data datetime NOT NULL,
	data_atualizacao datetime NOT NULL,
	data_criacao datetime NOT NULL,
	descricao varchar(255) DEFAULT NULL,
	localizacao varchar(255) DEFAULT NULL,
	tipo varchar(255) NOT NULL,
	funcionario_id bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE empresa
	ADD PRIMARY KEY(id);
	
ALTER TABLE funcionario
	ADD PRIMARY KEY(id),
	ADD KEY 3960436649365666213L (empresa_id);
	
ALTER TABLE lancamento
	ADD PRIMARY KEY (id),
	ADD KEY 2658409153511874383L (funcionario_id);
	
ALTER TABLE empresa
	MODIFY id bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE funcionario
	MODIFY id bigint(20) NOT NULL AUTO_INCREMENT;
	
ALTER TABLE lancamento
	MODIFY id bigint(20) NOT NULL AUTO_INCREMENT;
	
ALTER TABLE funcionario
	ADD CONSTRAINT 3960436649365666213L FOREIGN KEY (empresa_id) REFERENCES empresa(id);

ALTER TABLE lancamento
	ADD CONSTRAINT 2658409153511874383L FOREIGN KEY (funcionario_id) REFERENCES funcionario (id);