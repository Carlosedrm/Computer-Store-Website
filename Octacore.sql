DROP DATABASE IF EXISTS Octacore;

CREATE DATABASE IF NOT EXISTS Octacore;

USE Octacore;

SET sql_mode = 'ONLY_FULL_GROUP_BY';

create table Octacore.produtos (
  id int primary key not null auto_increment,
  nome varchar(100) not null,
  preco double not null,
  descricao varchar(400)
);

select * from produtos;
  
create table Octacore.usuario (
  id_usuario int primary key not null auto_increment,
  nome varchar(50) not null,
  cpf char(11) not null,
  email varchar(50) not null,
  senha varchar(50) not null,
  confirmar_senha varchar(50) not null
);

select * from usuario;

create table Octacore.logon (
  id_contador int primary key not null auto_increment,
  id_usuario_login int not null
);

select * from logon;
  
create table Octacore.compra (
	id_compra int primary key not null auto_increment,
    tipo_pagamento varchar(30),
    id_do_usuario int,
    valor_total double,
    cartao_digitos char(16),
    exp_date char(5),
    codigo_seguranca char(3),
    data_compra varchar(10)
);

select * from compra;
    
create table Octacore.carrinho (
	id_carrinho int primary key not null auto_increment,
	id_produto int,
    valor_produto double,
    nome_produto varchar(50)
);

select * from carrinho;

INSERT INTO `octacore`.`produtos` (`id`, `nome`, `preco`, `descricao`) VALUES ('1', 'ACER Notebook Gamer Nitro 5', '4000.00', '8GB, 512GB SDD, (NVIDIA GTX 1650 ) Windows11. 15,6” LED FHD IPS Preto e vermelho');
INSERT INTO `octacore`.`produtos` (`id`, `nome`, `preco`, `descricao`) VALUES ('2', 'Computador PICHAU Gamer', '3500.00', 'COMPUTADOR PICHAU GAMER, INTEL I5-10400F, GEFORCE RTX 3060 12GB, 8GB DDR4, SSD 240GB');
INSERT INTO `octacore`.`produtos` (`id`, `nome`, `preco`, `descricao`) VALUES ('3', 'ThinkStation P348 Tower workstation', '5039.00', ' i5-11500, 8GB, 256GB Ssd, Quadro T400 2Gb Pro');
INSERT INTO `octacore`.`produtos` (`id`, `nome`, `preco`, `descricao`) VALUES ('4', 'Headphone Gamer', '200.00', 'Headphone Gamer USB com Microfone LED Iluminação Azul EXBOM - HF-G600');
INSERT INTO `octacore`.`produtos` (`id`, `nome`, `preco`, `descricao`) VALUES ('5', 'Teclado Gamer', '60.00', 'Rgb K-mex Rainbow');
INSERT INTO `octacore`.`produtos` (`id`, `nome`, `preco`, `descricao`) VALUES ('6', 'Teclado Gamer Acer Nitro', '70.00', 'TKL NKW120 LED retroiluminado 3 Zonas RGB USB ABNT 2');
INSERT INTO `octacore`.`produtos` (`id`, `nome`, `preco`, `descricao`) VALUES ('7', 'Monitor gamer Samsung', '1250.00', '29WL500-29", 21:9 IPS, HDMI, HDR10, Screen Split 2.0, Preto');
INSERT INTO `octacore`.`produtos` (`id`, `nome`, `preco`, `descricao`) VALUES ('8', 'Monitor LG ultra wide', '1000.00', 'T350, 24, IPS, FHD, 5MS, 75HZ, FREESYNC, HDMI/VGA, LF24T350FHLMZD');
INSERT INTO `octacore`.`produtos` (`id`, `nome`, `preco`, `descricao`) VALUES ('9', 'Monitor Gamer Alienware', '4360.00', 'Monitor de 24,5" para jogos competitivos em nível de esportes eletrônicos com uma base reformulada para gerar mais espaço na mesa e uma taxa de atualização de 360 Hz.');

INSERT INTO `octacore`.`usuario` (`id_usuario`, `nome`, `cpf`, `email`, `senha`, `confirmar_senha`) VALUES ('1', 'henrique', '12345678910', 'henrique', 'bomdia', 'bomdia');
INSERT INTO `octacore`.`usuario` (`id_usuario`, `nome`, `cpf`, `email`, `senha`, `confirmar_senha`) VALUES ('2', 'felipe', '12345678910', 'felipe@gmail.com.br', 'senha123', 'senha123');
INSERT INTO `octacore`.`usuario` (`id_usuario`, `nome`, `cpf`, `email`, `senha`, `confirmar_senha`) VALUES ('3', 'Luana Tiemann', '12345678910', 'leticia@hotmail.com.br', 'password', 'password');

# 2 teclados e 3 monitores