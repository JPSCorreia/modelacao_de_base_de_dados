USE BIO351;
#### Mock Data users #####
INSERT INTO user (vendor_id, first_name, last_name, email)
VALUES
(NULL, "Ana", "Silva", "ana.silva@email.com"),
(NULL, "Bruno", "Martins", "bruno.martins@email.com"),
(NULL, "Carla", "Gomes", "carla.gomes@email.com"),
(NULL, "Diogo", "Ferreira", "diogo.ferreira@email.com"),
(NULL, "Eva", "Lopes", "eva.lopes@email.com"),
(NULL, "Fábio", "Sousa", "fabio.sousa@email.com"),
(NULL, "Gina", "Costa", "gina.costa@email.com"),
(NULL, "Hugo", "Santos", "hugo.santos@email.com"),
(NULL, "Inês", "Pereira", "ines.pereira@email.com"),
(NULL, "João", "Rodrigues", "joao.rodrigues@email.com"),
(NULL, "Lara", "Almeida", "lara.almeida@email.com"),
(NULL, "Miguel", "Nunes", "miguel.nunes@email.com"),
(NULL, "Nadia", "Correia", "nadia.correia@email.com"),
(NULL, "Oscar", "Mendes", "oscar.mendes@email.com"),
(NULL, "Paula", "Lima", "paula.lima@email.com"),
(NULL, "Quintino", "Barros", "quintino.barros@email.com"),
(NULL, "Rita", "Fonseca", "rita.fonseca@email.com"),
(NULL, "Sofia", "Neves", "sofia.neves@email.com"),
(NULL, "Tiago", "Marques", "tiago.marques@email.com"),
(NULL, "Vera", "Soares", "vera.soares@email.com");


### Mock Data os vendedores ####
INSERT INTO vendor (user_id, nif)
VALUES
(1, '123456789'),
(2, '987654321'),
(3, '234567890'),
(4, '345678901'),
(5, '456789012'),
(6, '567890123');

UPDATE user SET vendor_id = 1 WHERE user_id = 1;
UPDATE user SET vendor_id = 2 WHERE user_id = 2;
UPDATE user SET vendor_id = 3 WHERE user_id = 3;
UPDATE user SET vendor_id = 4 WHERE user_id = 4;
UPDATE user SET vendor_id = 5 WHERE user_id = 5;
UPDATE user SET vendor_id = 6 WHERE user_id = 6;

#### Mock Data store ####
INSERT INTO store (vendor_id, store_name, store_phone, store_email, description, profile_picture, street_address, city, postal_code, deleted)
VALUES
(1, 'Super Loja A', '11-11', 'emailA@loja.com', 'A melhor loja de produtos A.', 'profileA.jpg', 'Rua A, 100', 'Cidade A', '1000-000', 0),
(2, 'Mega Loja B', '22-22', 'emailB@loja.com', 'Tudo que você precisa na Loja B.', 'profileB.jpg', 'Avenida B, 200', 'Cidade B', '2000-000', 0),
(3, 'Loja C Premium', '33-33', 'emailC@loja.com', 'Excelência em serviços na Loja C.', 'profileC.jpg', 'Praça C, 300', 'Cidade C', '3000-000', 0),
(4, 'Loja D e Cia', '44-44', 'emailD@loja.com', 'Variedade e preço baixo na Loja D.', 'profileD.jpg', 'Travessa D, 400', 'Cidade D', '4000-000', 0),
(5, 'E-Store E', '55-55', 'emailE@loja.com', 'Loja E especializada em eletrônicos.', 'profileE.jpg', 'Estrada E, 500', 'Cidade E', '5000-000', 0),
(6, 'F Shopping', '66-66', 'emailF@loja.com', 'O shopping da sua família.', 'profileF.jpg', 'Boulevard F, 600', 'Cidade F', '6000-000', 0);


#### Mock Data tabela product ####
INSERT INTO product (store_id, product_name, description, discount, image_link, price, stock, is_unit)
VALUES
(1, 'Maçã Orgânica', 'Maçãs cultivadas sem uso de pesticidas, colhidas frescas.', 0, 'imagem_maça.jpg', 1.00, 100, 1),
(1, 'Tomate Biológico', 'Tomates cultivados organicamente, sem produtos químicos.', 0, 'imagem_tomate.jpg', 1.20, 150, 1),
(1, 'Alface Hidropônica', 'Alface cultivada em água, sem solo, garantindo pureza e qualidade.', 0, 'imagem_alface.jpg', 0.80, 200, 1),
(1, 'Mel Puro de Abelha', 'Mel puro, extraído de forma sustentável sem prejudicar as abelhas.', 0, 'imagem_mel.jpg', 5.00, 50, 0),
(1, 'Pão Artesanal Orgânico', 'Pão feito com ingredientes orgânicos e naturais.', 0, 'imagem_pao.jpg', 2.50, 80, 1),
(1, 'Leite de Origem Local', 'Leite fresco, produzido localmente sem hormônios.', 0, 'imagem_leite.jpg', 1.50, 100, 0),
(1, 'Queijo Artesanal', 'Queijo produzido artesanalmente com técnicas tradicionais.', 0, 'imagem_queijo.jpg', 3.00, 70, 1),
(1, 'Ovos de Galinhas Criadas Livremente', 'Ovos de galinhas que vivem em ambientes abertos e saudáveis.', 0, 'imagem_ovos.jpg', 2.00, 120, 1),
(1, 'Melancia Sem Agrotóxicos', 'Melancias grandes e suculentas, cultivadas sem agrotóxicos.', 0, 'imagem_melancia.jpg', 3.00, 90, 1),
(1, 'Café Orgânico', 'Café de alta qualidade, produzido sem uso de produtos químicos.', 0, 'imagem_cafe.jpg', 4.00, 150, 0),
(2, 'Maçã Orgânica', 'Maçãs cultivadas sem uso de pesticidas, colhidas frescas.', 0, 'imagem_maça.jpg', 1.00, 100, 1),
(2, 'Tomate Biológico', 'Tomates cultivados organicamente, sem produtos químicos.', 0, 'imagem_tomate.jpg', 1.20, 150, 1),
(2, 'Alface Hidropônica', 'Alface cultivada em água, sem solo, garantindo pureza e qualidade.', 0, 'imagem_alface.jpg', 0.80, 200, 1),
(2, 'Mel Puro de Abelha', 'Mel puro, extraído de forma sustentável sem prejudicar as abelhas.', 0, 'imagem_mel.jpg', 5.00, 50, 0),
(2, 'Pão Artesanal Orgânico', 'Pão feito com ingredientes orgânicos e naturais.', 0, 'imagem_pao.jpg', 2.50, 80, 1),
(2, 'Leite de Origem Local', 'Leite fresco, produzido localmente sem hormônios.', 0, 'imagem_leite.jpg', 1.50, 100, 0),
(2, 'Queijo Artesanal', 'Queijo produzido artesanalmente com técnicas tradicionais.', 0, 'imagem_queijo.jpg', 3.00, 70, 1),
(2, 'Ovos de Galinhas Criadas Livremente', 'Ovos de galinhas que vivem em ambientes abertos e saudáveis.', 0, 'imagem_ovos.jpg', 2.00, 120, 1),
(2, 'Melancia Sem Agrotóxicos', 'Melancias grandes e suculentas, cultivadas sem agrotóxicos.', 0, 'imagem_melancia.jpg', 3.00, 90, 1),
(2, 'Café Orgânico', 'Café de alta qualidade, produzido sem uso de produtos químicos.', 0, 'imagem_cafe.jpg', 4.00, 150, 0),
(3, 'Maçã Orgânica', 'Maçãs cultivadas sem uso de pesticidas, colhidas frescas.', 0, 'imagem_maça.jpg', 1.00, 100, 1),
(3, 'Tomate Biológico', 'Tomates cultivados organicamente, sem produtos químicos.', 0, 'imagem_tomate.jpg', 1.20, 150, 1),
(3, 'Alface Hidropônica', 'Alface cultivada em água, sem solo, garantindo pureza e qualidade.', 0, 'imagem_alface.jpg', 0.80, 200, 1),
(3, 'Mel Puro de Abelha', 'Mel puro, extraído de forma sustentável sem prejudicar as abelhas.', 0, 'imagem_mel.jpg', 5.00, 50, 0),
(3, 'Pão Artesanal Orgânico', 'Pão feito com ingredientes orgânicos e naturais.', 0, 'imagem_pao.jpg', 2.50, 80, 1),
(3, 'Leite de Origem Local', 'Leite fresco, produzido localmente sem hormônios.', 0, 'imagem_leite.jpg', 1.50, 100, 0),
(3, 'Queijo Artesanal', 'Queijo produzido artesanalmente com técnicas tradicionais.', 0, 'imagem_queijo.jpg', 3.00, 70, 1),
(3, 'Ovos de Galinhas Criadas Livremente', 'Ovos de galinhas que vivem em ambientes abertos e saudáveis.', 0, 'imagem_ovos.jpg', 2.00, 120, 1),
(3, 'Melancia Sem Agrotóxicos', 'Melancias grandes e suculentas, cultivadas sem agrotóxicos.', 0, 'imagem_melancia.jpg', 3.00, 90, 1),
(3, 'Café Orgânico', 'Café de alta qualidade, produzido sem uso de produtos químicos.', 0, 'imagem_cafe.jpg', 4.00, 150, 0),
(4, 'Maçã Orgânica', 'Maçãs cultivadas sem uso de pesticidas, colhidas frescas.', 0, 'imagem_maça.jpg', 1.00, 100, 1),
(4, 'Tomate Biológico', 'Tomates cultivados organicamente, sem produtos químicos.', 0, 'imagem_tomate.jpg', 1.20, 150, 1),
(4, 'Alface Hidropônica', 'Alface cultivada em água, sem solo, garantindo pureza e qualidade.', 0, 'imagem_alface.jpg', 0.80, 200, 1),
(4, 'Mel Puro de Abelha', 'Mel puro, extraído de forma sustentável sem prejudicar as abelhas.', 0, 'imagem_mel.jpg', 5.00, 50, 0),
(4, 'Pão Artesanal Orgânico', 'Pão feito com ingredientes orgânicos e naturais.', 0, 'imagem_pao.jpg', 2.50, 80, 1),
(4, 'Leite de Origem Local', 'Leite fresco, produzido localmente sem hormônios.', 0, 'imagem_leite.jpg', 1.50, 100, 0),
(4, 'Queijo Artesanal', 'Queijo produzido artesanalmente com técnicas tradicionais.', 0, 'imagem_queijo.jpg', 3.00, 70, 1),
(4, 'Ovos de Galinhas Criadas Livremente', 'Ovos de galinhas que vivem em ambientes abertos e saudáveis.', 0, 'imagem_ovos.jpg', 2.00, 120, 1),
(4, 'Melancia Sem Agrotóxicos', 'Melancias grandes e suculentas, cultivadas sem agrotóxicos.', 0, 'imagem_melancia.jpg', 3.00, 90, 1),
(4, 'Café Orgânico', 'Café de alta qualidade, produzido sem uso de produtos químicos.', 0, 'imagem_cafe.jpg', 4.00, 150, 0),
(5, 'Maçã Orgânica', 'Maçãs cultivadas sem uso de pesticidas, colhidas frescas.', 0, 'imagem_maça.jpg', 1.00, 100, 1),
(5, 'Tomate Biológico', 'Tomates cultivados organicamente, sem produtos químicos.', 0, 'imagem_tomate.jpg', 1.20, 150, 1),
(5, 'Alface Hidropônica', 'Alface cultivada em água, sem solo, garantindo pureza e qualidade.', 0, 'imagem_alface.jpg', 0.80, 200, 1),
(5, 'Mel Puro de Abelha', 'Mel puro, extraído de forma sustentável sem prejudicar as abelhas.', 0, 'imagem_mel.jpg', 5.00, 50, 0),
(5, 'Pão Artesanal Orgânico', 'Pão feito com ingredientes orgânicos e naturais.', 0, 'imagem_pao.jpg', 2.50, 80, 1),
(5, 'Leite de Origem Local', 'Leite fresco, produzido localmente sem hormônios.', 0, 'imagem_leite.jpg', 1.50, 100, 0),
(5, 'Queijo Artesanal', 'Queijo produzido artesanalmente com técnicas tradicionais.', 0, 'imagem_queijo.jpg', 3.00, 70, 1),
(5, 'Ovos de Galinhas Criadas Livremente', 'Ovos de galinhas que vivem em ambientes abertos e saudáveis.', 0, 'imagem_ovos.jpg', 2.00, 120, 1),
(5, 'Melancia Sem Agrotóxicos', 'Melancias grandes e suculentas, cultivadas sem agrotóxicos.', 0, 'imagem_melancia.jpg', 3.00, 90, 1),
(5, 'Café Orgânico', 'Café de alta qualidade, produzido sem uso de produtos químicos.', 0, 'imagem_cafe.jpg', 4.00, 150, 0),
(6, 'Maçã Orgânica', 'Maçãs cultivadas sem uso de pesticidas, colhidas frescas.', 0, 'imagem_maça.jpg', 1.00, 100, 1),
(6, 'Tomate Biológico', 'Tomates cultivados organicamente, sem produtos químicos.', 0, 'imagem_tomate.jpg', 1.20, 150, 1),
(6, 'Alface Hidropônica', 'Alface cultivada em água, sem solo, garantindo pureza e qualidade.', 0, 'imagem_alface.jpg', 0.80, 200, 1),
(6, 'Mel Puro de Abelha', 'Mel puro, extraído de forma sustentável sem prejudicar as abelhas.', 0, 'imagem_mel.jpg', 5.00, 50, 0),
(6, 'Pão Artesanal Orgânico', 'Pão feito com ingredientes orgânicos e naturais.', 0, 'imagem_pao.jpg', 2.50, 80, 1),
(6, 'Leite de Origem Local', 'Leite fresco, produzido localmente sem hormônios.', 0, 'imagem_leite.jpg', 1.50, 100, 0),
(6, 'Queijo Artesanal', 'Queijo produzido artesanalmente com técnicas tradicionais.', 0, 'imagem_queijo.jpg', 3.00, 70, 1),
(6, 'Ovos de Galinhas Criadas Livremente', 'Ovos de galinhas que vivem em ambientes abertos e saudáveis.', 0, 'imagem_ovos.jpg', 2.00, 120, 1),
(6, 'Melancia Sem Agrotóxicos', 'Melancias grandes e suculentas, cultivadas sem agrotóxicos.', 0, 'imagem_melancia.jpg', 3.00, 90, 1),
(6, 'Café Orgânico', 'Café de alta qualidade, produzido sem uso de produtos químicos.', 0, 'imagem_cafe.jpg', 4.00, 150, 0);


#### Mock Data order #####
INSERT INTO `order` (user_id, store_id, street_address, postal_code, city, created, comment, status)
VALUES
(7, 1, 'Rua Fictícia 123', '1000-123', 'Lisboa', CURRENT_TIMESTAMP, 'Entregar o mais rápido possível.', 'Em processamento'),
(8, 2, 'Avenida Inventada 456', '2000-456', 'Porto', CURRENT_TIMESTAMP, 'Por favor, deixar na porta.', 'Enviado'),
(9, 3, 'Travessa Mitológica 789', '3000-789', 'Coimbra', CURRENT_TIMESTAMP, 'Cuidado com os produtos frágeis.', 'Entregue'),
(10, 1, 'Largo do Conto 1010', '4000-010', 'Braga', CURRENT_TIMESTAMP, 'Confirmar antes de entregar.', 'Cancelado'),
(11, 2, 'Praceta da Lenda 1212', '5000-212', 'Faro', CURRENT_TIMESTAMP, 'Deixar na recepção.', 'Cancelado'),
(12, 3, 'Rua da Saga 1313', '6000-313', 'Viseu', CURRENT_TIMESTAMP, 'Sem pressa.', 'Espera de pagamento'),
(13, 1, 'Rua do Épico 1414', '7000-414', 'Aveiro', CURRENT_TIMESTAMP, 'Peço discreção na entrega.', 'Enviado'),
(14, 2, 'Avenida da Fábula 1515', '8000-515', 'Évora', CURRENT_TIMESTAMP, 'Usar embalagem discreta.', 'Entregue'),
(15, 3, 'Boulevard do Conto 1616', '9000-616', 'Guarda', CURRENT_TIMESTAMP, 'Ligar 30 min antes.', 'Em processamento'),
(16, 1, 'Rua da História 1717', '1000-717', 'Santarém', CURRENT_TIMESTAMP, 'Deixar no correio.', 'Enviado'),
(17, 2, 'Beco do Fábula 1818', '1100-818', 'Setúbal', CURRENT_TIMESTAMP, 'Pode deixar no vizinho.', 'Entregue'),
(18, 3, 'Alameda da Lenda 1919', '1200-919', 'Viana do Castelo', CURRENT_TIMESTAMP, 'Não entregar aos domingos.', 'Espera de pagamento'),
(19, 1, 'Via da Saga 2020', '1300-020', 'Beja', CURRENT_TIMESTAMP, 'Preciso antes das 17h.', 'Enviado'),
(20, 2, 'Caminho do Épico 2121', '1400-121', 'Bragança', CURRENT_TIMESTAMP, 'Obrigado!', 'Entregue'),
(7, 1, 'Rua Fictícia 123', '1000-123', 'Lisboa', CURRENT_TIMESTAMP, 'Entregar na parte da tarde.', 'Cancelado'),
(8, 2, 'Avenida Inventada 456', '2000-456', 'Porto', CURRENT_TIMESTAMP, 'Entregar somente no endereço registrado.', 'Espera de pagamento'),
(9, 3, 'Travessa Mitológica 789', '3000-789', 'Coimbra', CURRENT_TIMESTAMP, 'Por favor, verificar o produto na entrega.', 'Cancelado'),
(10, 1, 'Largo do Conto 1010', '4000-010', 'Braga', CURRENT_TIMESTAMP, 'Sem substituições, por favor.', 'Espera de pagamento'),
(11, 2, 'Praceta da Lenda 1212', '5000-212', 'Faro', CURRENT_TIMESTAMP, 'Se possível, entregar antes das 10h.', 'Espera de pagamento'),
(12, 3, 'Rua da Saga 1313', '6000-313', 'Viseu', CURRENT_TIMESTAMP, 'Por favor, entregar no escritório.', 'Enviado');


#### Mock Data order_product ####
INSERT INTO order_product (order_id, product_id, price, discount)
VALUES
-- Pedido 1
(1, 1, 10.00, 0.0),
(1, 2, 15.00, 1.50),
(1, 3, 7.00, 0.0),
-- Pedido 2
(2, 4, 20.00, 2.00),
(2, 5, 25.00, 0.0),
(2, 6, 30.00, 3.00),
-- Pedido 3
(3, 7, 45.00, 4.50),
(3, 8, 50.00, 5.00),
(3, 9, 8.00, 0.80),
-- Pedido 4
(4, 10, 12.00, 1.20),
(4, 1, 11.00, 1.10),
(4, 2, 14.00, 0.0),
-- Pedido 5
(5, 3, 6.00, 0.0),
(5, 4, 19.00, 1.90),
(5, 5, 22.00, 2.20),
-- Pedido 6
(6, 6, 31.00, 3.10),
(6, 7, 46.00, 0.0),
(6, 8, 55.00, 5.50),
-- Pedido 7
(7, 9, 9.00, 0.0),
(7, 10, 13.00, 1.30),
(7, 1, 10.00, 1.00),
-- Pedido 8
(8, 2, 16.00, 1.60),
(8, 3, 7.00, 0.0),
(8, 4, 20.00, 2.00),
-- Pedido 9
(9, 5, 25.00, 0.0),
(9, 6, 30.00, 3.00),
(9, 7, 45.00, 4.50),
-- Pedido 10
(10, 8, 50.00, 5.00),
(10, 9, 8.00, 0.80),
(10, 10, 12.00, 1.20),
-- Repetir a sequência acima para os pedidos de 11 a 20
(11, 1, 10.00, 0.0),
(11, 2, 15.00, 1.50),
(11, 3, 7.00, 0.0),
-- Pedido 12
(12, 4, 20.00, 2.00),
(12, 5, 25.00, 0.0),
(12, 6, 30.00, 3.00),
-- Pedido 13
(13, 7, 45.00, 4.50),
(13, 8, 50.00, 5.00),
(13, 9, 8.00, 0.80),
-- Pedido 14
(14, 10, 12.00, 1.20),
(14, 1, 11.00, 1.10),
(14, 2, 14.00, 0.0),
-- Pedido 15
(15, 3, 6.00, 0.0),
(15, 4, 19.00, 1.90),
(15, 5, 22.00, 2.20),
-- Pedido 16
(16, 6, 31.00, 3.10),
(16, 7, 46.00, 0.0),
(16, 8, 55.00, 5.50),
-- Pedido 17
(17, 9, 9.00, 0.0),
(17, 10, 13.00, 1.30),
(17, 1, 10.00, 1.00),
-- Pedido 18
(18, 2, 16.00, 1.60),
(18, 3, 7.00, 0.0),
(18, 4, 20.00, 2.00),
-- Pedido 19
(19, 5, 25.00, 0.0),
(19, 6, 30.00, 3.00),
(19, 7, 45.00, 4.50),
-- Pedido 20
(20, 8, 50.00, 5.00),
(20, 9, 8.00, 0.80),
(20, 10, 12.00, 1.20);


#### Mock Data home_address ###
INSERT INTO home_address (user_id, first_name, last_name, phone_number, street_address, postal_code, city, comment, deleted)
VALUES
(1, 'Ana', 'Silva', '912345678', 'Rua das Flores 45', '2745-145', 'Lisboa', 'N/A', 0),
(2, 'Bruno', 'Martins', '912345679', 'Avenida da Liberdade 102', '1250-096', 'Lisboa', 'N/A', 0),
(3, 'Carla', 'Gomes', '912345680', 'Praceta das Amoreiras 59', '2750-642', 'Cascais', 'N/A', 0),
(4, 'Diogo', 'Ferreira', '912345681', 'Largo do Carmo 3', '1200-092', 'Lisboa', 'N/A', 0),
(5, 'Eva', 'Lopes', '912345682', 'Rua de Santa Catarina 850', '4000-446', 'Porto', 'N/A', 0),
(6, 'Fábio', 'Sousa', '912345683', 'Rua de Cedofeita 120', '4050-174', 'Porto', 'N/A', 0),
(7, 'Gina', 'Costa', '912345684', 'Rua do Almada 200', '4050-031', 'Porto', 'N/A', 0),
(8, 'Hugo', 'Santos', '912345685', 'Avenida dos Aliados 50', '4000-064', 'Porto', 'N/A', 0),
(9, 'Inês', 'Pereira', '912345686', 'Rua Ferreira Borges 69', '3000-180', 'Coimbra', 'N/A', 0),
(10, 'João', 'Rodrigues', '912345687', 'Praça da República 2', '3000-343', 'Coimbra', 'N/A', 0),
(11, 'Lara', 'Almeida', '912345688', 'Rua de Santo António 88', '8000-282', 'Faro', 'N/A', 0),
(12, 'Miguel', 'Nunes', '912345689', 'Largo de São Francisco 34', '8000-142', 'Faro', 'N/A', 0),
(13, 'Nadia', 'Correia', '912345690', 'Rua 5 de Outubro 23', '7800-475', 'Beja', 'N/A', 0),
(14, 'Oscar', 'Mendes', '912345691', 'Avenida da Boavista 1472', '4100-115', 'Porto', 'N/A', 0),
(15, 'Paula', 'Lima', '912345692', 'Parque das Nações Lote 2.21.01', '1990-221', 'Lisboa', 'N/A', 0),
(16, 'Quintino', 'Barros', '912345693', 'Avenida Doutor Lourenço Peixinho 213', '3800-165', 'Aveiro', 'N/A', 0),
(17, 'Rita', 'Fonseca', '912345694', 'Rua do Brasil 17', '3030-175', 'Coimbra', 'N/A', 0),
(18, 'Sofia', 'Neves', '912345695', 'Praça Velha 22', '4700-439', 'Braga', 'N/A', 0),
(19, 'Tiago', 'Marques', '912345696', 'Rua Eduardo Manuel de Almeida 12', '4715-213', 'Braga', 'N/A', 0),
(20, 'Vera', 'Soares', '912345697', 'Rua dos Clérigos 48', '4050-204', 'Porto', 'N/A', 0);


#### Mock Data category ####
INSERT INTO category (category_id, category_name)
VALUES
(1, 'Frutas Orgânicas'),
(2, 'Produtos Lácteos'),
(3, 'Produtos de Padaria'),
(4, 'Vegetais'),
(5, 'Mel e Derivados');

#### Mock Data product_category ####
INSERT INTO product_category (product_id, category_id)
VALUES
-- Maçã Orgânica
(1, 1),
-- Tomate Biológico
(2, 4),
-- Alface Hidropônica
(3, 4),
-- Mel Puro de Abelha
(4, 5),
-- Pão Artesanal Orgânico
(5, 3),
-- Leite de Origem Local
(6, 2),
-- Queijo Artesanal
(7, 2),
-- Ovos de Galinhas Criadas Livremente
(8, 2),
-- Melancia Sem Agrotóxicos
(9, 1),
-- Café Orgânico
(10, 1);


### Mock Data store_review ####
INSERT INTO store_review (user_id, store_id, rating, comment, created)
VALUES
(7, 1, 4, 'Ótimo serviço e produtos de qualidade.', CURRENT_TIMESTAMP),
(8, 1, 5, 'Melhor loja da região!', CURRENT_TIMESTAMP),
(9, 2, 3, 'Bom, mas pode melhorar no atendimento.', CURRENT_TIMESTAMP),
(10, 2, 2, 'Experiência razoável, esperava mais variedade.', CURRENT_TIMESTAMP),
(11, 3, 5, 'Tudo perfeito! Recomendo!', CURRENT_TIMESTAMP),
(12, 3, 4, 'Muito bons produtos, serviço rápido.', CURRENT_TIMESTAMP),
(13, 4, 1, 'Não gostei. Atendimento muito demorado.', CURRENT_TIMESTAMP),
(14, 4, 3, 'Loja ok, nada excepcional.', CURRENT_TIMESTAMP),
(15, 5, 2, 'Preços altos para a qualidade oferecida.', CURRENT_TIMESTAMP),
(16, 5, 3, 'Atendimento bom, mas falta mais opções de produtos.', CURRENT_TIMESTAMP),
(17, 6, 4, 'Boa loja, bons preços.', CURRENT_TIMESTAMP),
(18, 6, 5, 'Excelente! Adoro comprar aqui.', CURRENT_TIMESTAMP),
(19, 1, 5, 'Sempre encontro o que preciso, e os funcionários são muito atenciosos.', CURRENT_TIMESTAMP),
(20, 1, 4, 'Muito bom, produtos de qualidade a preços justos.', CURRENT_TIMESTAMP),
(7, 2, 4, 'Serviço rápido, produtos sempre frescos.', CURRENT_TIMESTAMP),
(8, 2, 4, 'Gosto de comprar aqui, bons preços.', CURRENT_TIMESTAMP),
(9, 3, 3, 'Variados produtos, mas o atendimento é lento.', CURRENT_TIMESTAMP),
(10, 3, 2, 'Não tinha muitos produtos que eu queria.', CURRENT_TIMESTAMP),
(11, 4, 1, 'Má experiência, não voltarei.', CURRENT_TIMESTAMP),
(12, 4, 3, 'Justo pelo preço, mas pode melhorar.', CURRENT_TIMESTAMP);

#### Mock Data product_review ####
INSERT INTO product_review (user_id, product_id, rating, created, comment)
VALUES
(7, 1, 5, CURRENT_TIMESTAMP, 'Excelente qualidade, maçãs muito saborosas.'),
(8, 1, 4, CURRENT_TIMESTAMP, 'Muito boas, mas poderia ter mais opções de tamanhos.'),
(9, 2, 3, CURRENT_TIMESTAMP, 'Tomates frescos, mas o preço é um pouco alto.'),
(10, 2, 4, CURRENT_TIMESTAMP, 'Gostei bastante, mas faltou informação sobre a origem.'),
(11, 3, 5, CURRENT_TIMESTAMP, 'Alface fresca e crocante, adorei.'),
(12, 3, 4, CURRENT_TIMESTAMP, 'Boa qualidade, mas a embalagem poderia ser melhor.'),
(13, 4, 5, CURRENT_TIMESTAMP, 'Mel puro e delicioso, recomendo!'),
(14, 4, 4, CURRENT_TIMESTAMP, 'Muito bom, mas o preço é elevado.'),
(15, 5, 5, CURRENT_TIMESTAMP, 'Pão artesanal de excelente qualidade, superou minhas expectativas.'),
(16, 5, 4, CURRENT_TIMESTAMP, 'Bom pão, mas o tamanho das fatias é irregular.'),
(17, 6, 3, CURRENT_TIMESTAMP, 'Leite fresco, mas achei o sabor um pouco diferente.'),
(18, 6, 4, CURRENT_TIMESTAMP, 'Leite muito bom, mas a embalagem poderia ser mais prática.'),
(19, 7, 5, CURRENT_TIMESTAMP, 'Queijo artesanal delicioso, recomendo fortemente.'),
(20, 7, 4, CURRENT_TIMESTAMP, 'Queijo muito bom, mas o preço é um pouco alto.'),
(7, 8, 5, CURRENT_TIMESTAMP, 'Ovos frescos e de ótima qualidade.'),
(8, 8, 4, CURRENT_TIMESTAMP, 'Gostei dos ovos, mas alguns estavam quebrados.'),
(9, 9, 5, CURRENT_TIMESTAMP, 'Melancia suculenta e muito saborosa, adorei.'),
(10, 9, 4, CURRENT_TIMESTAMP, 'Boa melancia, mas achei um pouco cara.'),
(11, 10, 5, CURRENT_TIMESTAMP, 'Café orgânico de excelente qualidade, sabor incrível.'),
(12, 10, 4, CURRENT_TIMESTAMP, 'Muito bom, mas poderia ser mais forte.');