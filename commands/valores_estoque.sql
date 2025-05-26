 INSERT INTO categoria(nome,descricao) VALUES 
('Eletrônicos', 'Produtos eletrônicos como celulares, computadores e acessórios.'),
('Vestuário', 'Roupas e acessórios de moda.'),
('Alimentos', 'Produtos alimentícios e bebidas.');
INSERT INTO fornecedores(nome,telefone,email,endereco) VALUES
('Fornecedor A', '31-95432-7632', 'exemplo1@fornecedora.com', 'Rua A, 123, Cidade A'),
('Fornecedor B', '31-65412-5623', 'exemplo2@fornecedorb.com', 'Rua B, 456, Cidade B');
INSERT INTO produtos(nome,descricao,preco,quantidade,categoria_id,fornecedor_id) VALUES
('Notebook', 'Notebook gamer', 6100.00, 50, 1, 1),
('Camiseta', 'Camiseta de algodão', 50.00, 200, 2, 2),
('Cereal', 'Cereal matinal', 20.00, 100, 3, NULL);
INSERT INTO movimentacoes(produto_id, quantidade, tipo) VALUES
(1, 20, 'entrada'),
(2, 15, 'saida'),
(3, 50, 'entrada');




