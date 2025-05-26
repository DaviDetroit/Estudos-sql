CREATE TABLE IF NOT EXISTS categoria(
 categoria_id int auto_increment primary key,
 nome varchar(50) not null unique,
 descricao text,
 data_criacao timestamp default current_timestamp
);
 CREATE TABLE IF NOT EXISTS  fornecedores(
 fornecedor_id int auto_increment primary key,
 nome varchar(50) not null,
 telefone varchar(20),
 email varchar(100)unique,
 endereco text,
 data_cadastro timestamp default current_timestamp
 );
 CREATE TABLE IF NOT EXISTS produtos(
 produto_id int auto_increment primary key,
 nome varchar(100)not null,
 descricao text,
 preco decimal(10,2)not null check (preco >= 0),
 quantidade int default 0 check (quantidade >= 0),
 categoria_id int,
 fornecedor_id int,
 data_cadastro timestamp default current_timestamp,
 constraint fk_categoria foreign key (categoria_id) references categoria(categoria_id) on delete set  null on update cascade,
 constraint fk_fornecedor foreign key (fornecedor_id) references fornecedores(fornecedor_id)on delete set null on update cascade
 );
 CREATE TABLE IF NOT EXISTS movimentacoes(
 movimentacao_id int auto_increment primary key,
 produto_id int not null,
 quantidade int not null check (quantidade <> 0),
 tipo ENUM ('entrada','saida') not null,
 data_movimentacao timestamp default current_timestamp,
 constraint fk_produto foreign key (produto_id) references produtos (produto_id) on delete cascade on update cascade
 );




 
 
 
 