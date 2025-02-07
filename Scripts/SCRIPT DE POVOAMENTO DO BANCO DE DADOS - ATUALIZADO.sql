insert into clientes
(nome, endereco, telefone, email)
values
(58, 'Carlos Silva, Rua das Flores 123 - São Paulo SP', '(11) 98765-4321', 'carlos.silva@example.com.br'),
(59, 'Maria Santos, Avenida do Sol 456 - São Paulo SP', '(11) 87654-3210', 'maria.santos@example.com.br'),
(60, 'Lucas Pereira, Travessa das Palmeiras 789 - São Paulo SP', '(11) 76543-2109', 'lucas.pereira@example.com.br'),
(61, 'Ana Souza, Rua das Montanhas 234 - São Paulo SP', '(11) 65432-1098', 'ana.souza@example.com.br'),
(62, 'Rafael Oliveira, Alameda das Praias 567 - São Paulo SP', '(11) 54321-0987', 'rafael.oliveira@example.com.br'),
(63, 'Camila Santos, Rua das Palmeiras 321 - São Paulo SP', '(11) 43210-9876', 'camila.santos@example.com.br'),
(64, 'André Alves, Avenida das Estrelas 789 - São Paulo SP', '(11) 32109-8765', 'andre.alves@example.com.br'),
(65, 'Juliana Costa, Travessa das Montanhas 987 - São Paulo SP', '(11) 21098-7654', 'juliana.costa@example.com.br'),
(66, 'Thiago Silva, Rua do Mar 654 - São Paulo SP', '(11) 09876-5432', 'thiago.silva@example.com.br'),
(67, 'Fernanda Ribeiro, Avenida das Flores 210 - São Paulo SP', '(11) 87654-3210', 'fernanda.ribeiro@example.com.br'),
(68, 'Marcelo Costa, Rua das Palmas 123 - São Paulo SP', '(11) 76543-2109', 'marcelo.costa@example.com.br'),
(69, 'Laura Rodrigues, Avenida das Estrelas 456 - São Paulo SP', '(11) 65432-1098', 'laura.rodrigues@example.com.br'),
(70, 'Victor Ferreira, Rua do Sol 789 - São Paulo SP', '(11) 54321-0987', 'victor.ferreira@example.com.br'),
(71, 'Larissa Oliveira, Travessa das Flores 234 - São Paulo SP', '(11) 43210-9876', 'larissa.oliveira@example.com.br'),
(72, 'Gustavo Alves, Alameda das Montanhas 567 - São Paulo SP', '(11) 32109-8765', 'gustavo.alves@example.com.br');

insert into pedidos
(data_do_pedido, idclientes, idfuncionarios, status_do_pedido, total_do_pedido)
values
('2023-10-01', '1', '1', 'Em Processamento', 'R$ 150.00'),
('2023-10-02', '2', '2', 'Concluído', 'R$ 99.99'),
('2023-10-03', '3', '3', 'Aguardando Pagamento', 'R$ 75.50'),
('2023-10-04', '4', '4', 'Em Processamento', 'R$ 200.25'),
('2023-10-05', '5', '5', 'Concluído', 'R$ 180.00'),
('2023-10-06', '6', '6', 'Aguardando Pagamento', 'R$ 60.75'),
('2023-10-07', '7', '7', 'Em Processamento', 'R$ 210.30'),
('2023-10-08', '8', '8', 'Concluído', 'R$ 120.99'),
('2023-10-09', '9', '9', 'Aguardando Pagamento', 'R$ 90.25'),
('2023-10-10', '10', '10', 'Em Processamento', 'R$ 250.75'),
('2023-10-11', '11', '11', 'Concluído', 'R$ 140.50'),
('2023-10-12', '12', '12', 'Aguardando Pagamento', 'R$ 95.99'),
('2023-10-13', '13', '13', 'Em Processamento', 'R$ 175.25'),
('2023-10-14', '14', '14', 'Concluído', 'R$ 110.00'),
('2023-10-15', '15', '15', 'Aguardando Pagamento', 'R$ 85.50');

insert into funcionarios 
(idfuncionarios, nome, cargo, data_de_contratacao, salario)
values
(1, 'Carlos Santos', 'Sapateiro Dono', '2021-05-10', 'R$ 4.000,00'),
(2, 'Rafael Oliveira', 'Gerente Geral', '2021-04-12', 'R$ 4.500,00'),
(3, 'Ana Souza', 'Caixa', '2022-01-20', 'R$ 2.200,00'),
(4, 'João Pereira', 'Auxiliar do Sapateiro', '2022-06-30', 'R$ 2.100,00'),
(5, 'Maria Silva', 'Atendente', '2022-03-15', 'R$ 2.500,00'),
(6, 'Carlos Santos', 'Sapateiro Dono', '2021-05-10', 'R$ 4.000,00'),
(7, 'Rafael Oliveira', 'Gerente Geral', '2021-04-12', 'R$ 4.500,00'),
(8, 'Ana Souza', 'Caixa', '2022-01-20', 'R$ 2.200,00'),
(9, 'João Pereira', 'Auxiliar do Sapateiro', '2022-06-30', 'R$ 2.100,00'),
(10, 'Maria Silva', 'Atendente', '2022-03-15', 'R$ 2.500,00'),
(11, 'Carlos Santos', 'Sapateiro Dono', '2021-05-10', 'R$ 4.000,00'),
(12, 'Rafael Oliveira', 'Gerente Geral', '2021-04-12', 'R$ 4.500,00'),
(13, 'Ana Souza', 'Caixa', '2022-01-20', 'R$ 2.200,00'),
(14, 'João Pereira', 'Auxiliar do Sapateiro', '2022-06-30', 'R$ 2.100,00'),
(15, 'Maria Silva', 'Atendente', '2022-03-15', 'R$ 2.500,00');

insert into pagamentos
(metodo_pagamento, valor, data, idpedidos)
values
('Cartão de Crédito', 'R$ 150.00', '2023-10-02', '1'),
('Dinheiro', 'R$ 99.99', '2023-10-02', '2'),
('Transferência Bancária', 'R$ 75.50', '2023-10-03', '3'),
('Cartão de Débito', 'R$ 200.25', '2023-10-04', '4'),
('PayPal', 'R$ 180.00', '2023-10-05', '5'),
('Boleto Bancário', 'R$ 60.75', '2023-10-06', '6'),
('Cartão de Crédito', 'R$ 210.30', '2023-10-07', '7'),
('Dinheiro', 'R$ 120.99', '2023-10-08', '8'),
('Transferência Bancária', 'R$ 90.25', '2023-10-09', '9'),
('Cartão de Débito', 'R$ 250.75', '2023-10-10', '10'),
('PayPal', 'R$ 140.50', '2023-10-11', '11'),
('Boleto Bancário', 'R$ 95.99', '2023-10-12', '12'),
('Transferência Bancária', 'R$ 175.25', '2023-10-13', '13'),
('Cartão de Crédito', 'R$ 110.00', '2023-10-14', '14'),
('Dinheiro', 'R$ 85.50', '2023-10-15', '15');

insert into produtos
(nome, descricao, preco, tamanho, cor, estoque, idcategoria, idfornecedor)
values
('Solado de Borracha', 'Solados de borracha resistentes para substituição', 'R$ 12,99 por unidade', 'Variados tamanhos', 'Preto', '100 unidades', '1', '1'),
('Fios de Nylon para Costura', 'Fios de nylon duráveis para costurar e reparar calçados', 'R$ 5,99 por rolo', '100 metros por rolo', 'Branco', '50 rolos', '2', '2'),
('Conjunto de Ferramentas de Sapateiro', 'Um conjunto completo de ferramentas para consertos de sapatos', 'R$ 49,99 por conjunto', 'Martelo, alicates, esticador de sapatos, etc', 'Diversas cores', '10 conjuntos', '3', '3'),
('Solvente para Limpeza de Couro', 'Solvente de alta qualidade para limpar manchas de couro', 'R$ 8,99 por frasco', '250 ml por frasco', 'Cor padrão', '40 frascos', '4', '4'),
('Couro para Reparo', 'Pequenos pedaços de couro para reparos', 'R$ 4,99 por pedaço', '10 cm x 10 cm por pedaço', 'Variadas', '60 pedaços', '5', '5'),
('Sola de Couro Legítimo', 'Solas de couro genuíno para restauração de sapatos', 'R$ 15,99 por unidade', 'Variados tamanhos', 'Marrom', '30 unidades', '6', '6'),
('Kit de Tintas para Couro', 'Conjunto de tintas e pincéis para retoques de cor em couro', 'R$ 29,99 por kit', 'Tintas e pincéis para retoques', 'Várias Cores', '20 kits', '7', '7'),
('Pregos de Reparo', 'Pregos resistentes para fixação de solados', 'R$ 3,99 por conjunto', '100 pregos por conjunto', 'Cinza', '100 conjuntos', '8', '8'),
('Borracha para Solado', 'Borrachas para reparo de solados de sapatos', 'R$ 6,99 por unidade', 'Variados tamanhos', 'Preto', '80 unidades', '9', '9'),
('Calçadeira de Metal', 'Calçadeira resistente para auxiliar no calçar de sapatos', 'R$ 7,99 por unidade', 'Único', 'Prata', '150 unidades', '10', '10'),
('Formas para Sapatos', 'Formas de madeira para manter a forma dos sapatos durante o reparo', 'R$ 10,99 por par', 'Variados tamanhos', 'Natural', '40 pares', '11', '11'),
('Lixa para Couro', 'Lixa especial para preparar o couro para reparos', 'R$ 3,99 por folha', '20 cm x 10 cm por folha', 'Médio', '100 folhas', '12', '12'),
('Borracha de Limpeza', 'Borrachas de limpeza para remover manchas e sujeira de calçados', 'R$ 2,49 por unidade', 'Único', 'Amarelo', '200 unidades', '13', '13'),
('Cadarços de Couro', 'Cadarços de couro genuíno para substituição', 'R$ 6,99 por par', 'Variados tamanhos', 'Variadas cores', '150 pares', '14', '14'),
('Selante para Costuras', 'Selante de costuras para reforçar e proteger as costuras dos sapatos', 'R$ 4,99 por frasco', '50 ml por frasco', 'Transparente', '80 frascos', '15', '15');

insert into itens_pedido
(iditens_pedido, idpedidos, idprodutos, quantidade, preco_unitario)
values
(1, '1', '16', '5 unidades', 'R$ 12,99'),
(2, '2', '17', '3 unidades', 'R$ 15,99'),
(3, '3', '18',  '10 pares', 'R$ 5,99'),
(8, '4', '19', '2 metros', 'R$ 7,99'),
(9, '5', '20', '1 conjunto', 'R$ 49,99'),
(10, '6', '21', '15 unidades', 'R$ 3,99'),
(11, '7', '22', '5 unidades', 'R$ 9,99'),
(12, '8', '23', '8 carreteis', 'R$ 4,99'),
(13, '9', '24', '12 conjuntos', 'R$ 2,99'),
(14, '10', '25', '3 frascos', 'R$ 8,99'),
(15, '11', '26', '4 unidades', 'R$ 15,99'),
(16, '12', '27', '2 conjuntos', 'R$ 49,99'),
(17, '13', '28', '20 unidades', 'R$ 6,99'),
(18, '14', '29', '5 folhas', 'R$ 3,99'),
(19, '15', '30', '6 pares', 'R$ 6,99');

insert into fornecedores
(nome, endereco, telefone, email)
values
('Fornecedor Brasil Calçados Ltda', 'Avenida Paulista 123 - São Paulo SP', '(11) 1234-5678', 'contato@brasilcalcados.com.br'),
('Sapatarias do Sul S.A', 'Rua dos Sapateiros 456 - São Paulo SP', '(11) 9876-5432', 'vendas@sapatariasdosul.com'),
('Couros e Solados Paulista', 'Praça da Sola 789 - São Paulo SP', '(11) 5555-5555', 'contato@courose.solados.com'),
('Fornecedora de Componentes em Couro Ltda', 'Rua da Arte do Couro 321 - São Paulo SP', '(11) 6543-2109', 'vendas@fornecedora.com'),
('Materiais e Ferragens para Calçados S.A', 'Avenida dos Sapateiros 654 - São Paulo SP', '(11) 8765-4321', 'vendas@materiaisferragens.com'),
('Fornecedores de Soluções para Sapateiros S.A', 'Rua do Conserto 987 - São Paulo SP', '(11) 1111-1111', 'contato@sapateirosolutions.com'),
('Fornecedor de Componentes para Calçados Ltda', 'Avenida do Couro 101 - São Paulo SP', '(11) 2222-2222', 'vendas@componentescalçados.com'),
('Suprimentos para Calçados Paulistana S.A', 'Praça do Reparo 555 - São Paulo SP', '(11) 7777-7777', 'contato@suprimentoscalçados.com'),
('Fornecedor de Insumos em Couro e Borracha Ltda', 'Rua das Ferramentas 777 - São Paulo SP', '(11) 3333-3333', 'vendas@insumoscouroeborracha.com'),
('Solados e Componentes de Alta Qualidade S.A', 'Avenida do Encaixe 222 - São Paulo SP', '(11) 4444-4444', 'vendas@soladoscomponentes.com'),
('Fornecedora de Ferramentas para Sapateiros S.A', 'Rua dos Reparos 333 - São Paulo SP', '(11) 9999-9999', 'vendas@ferramentassapateiros.com'),
('Fornecedora de Produtos para Calçados Ltda', 'Avenida da Qualidade 444 - São Paulo SP', '(11) 8888-8888', 'vendas@produtoscalçados.com'),
('Componentes de Alta Performance S.A', 'Rua do Conserto Fino 555 - São Paulo SP', '(11) 7777-9999', 'contato@componentesalta.com'),
('Couros e Componentes para Calçados Ltda', 'Avenida da Excelência 666 - São Paulo SP', '(11) 6666-6666', 'vendas@courosecomponentes.com'),
('Fornecedora de Ferramentas e Materiais de Qualidade S.A', 'Rua dos Consertos Rápidos 777 - São Paulo SP', '(11) 5555-9999', 'contato@ferramentasqualidade.com');

insert into categorias_produtos
(nome_categoria, descricao)
values
('Solados de Borracha', 'Solados de borracha resistentes para substituição'),
('Fios de Costura', 'Fios de nylon duráveis para costurar e reparar calçados'),
('Conjuntos de Ferramentas de Sapateiro', 'Conjuntos completos de ferramentas para consertos de sapatos'),
('Solventes para Limpeza de Couro', 'Solventes de alta qualidade para limpar manchas de couro'),
('Materiais de Couro para Reparo', 'Pequenos pedaços de couro para reparos'),
('Solas de Couro Legítimo', 'Solas de couro genuíno para restauração de sapatos'),
('Kits de Tintas para Couro', 'Conjuntos de tintas e pincéis para retoques de cor em couro'),
('Pregos de Reparo', 'Pregos resistentes para fixação de solados'),
('Borrachas para Solado', 'Borrachas para reparo de solados de sapatos'),
('Calçadeiras de Sapateiro', 'Calçadeiras resistentes para auxiliar no calçar de sapatos'),
('Formas para Sapatos', 'Formas de madeira para manter a forma dos sapatos durante o reparo'),
('Materiais de Preparação', 'Materiais usados na preparação de couro e reparos iniciais'),
('Produtos de Limpeza de Calçados', 'Produtos de limpeza e manutenção de calçados'),
('Acessórios para Sapatos', 'Diversos acessórios para reparo e manutenção de calçados'),
('Produtos de Costura', 'Materiais e produtos relacionados à costura e reparo de calçados');