-- UTILIZE NO (CD.CLIENTE) O ID DO CLIENTE DESEJADO (1, 2, 3, 4, 5)
-- UTILIZE NO (ID_RESTAURANTE) O ID DO RESTAURANTE DESEJADO (1, 2, 3, 4, 5)

use db_ifood;

select r.nome as nome_restaurante, r.endereco, r.telefone, r.tipo_cozinha
from tb_restaurante r
inner join cidade c on r.id_cidade = c.cd_cidade
inner join tb_cliente cl on cl.endereco like concat(c.nm_cidade, '%', '%')
where cl.cd_cliente = 2;  

select p.nome as nome_produto, p.descricao, p.preco, p.foto, c.nome_categoria
from produtos p
inner join categoria c on p.categoria = c.cd_categoria
where p.id_restaurante = 3; 

select p.cd_pedido, p.hora_pedido, p.valor_total, r.nome as nome_restaurante
from tb_pediidos p
inner join restaurante r on p.id_restaurante = r.cd_restaurante
where p.id_cliente = 1  
and p.hora_pedido >= '2024-10-02'  
order by p.hora_pedido desc;

select p.cd_pedido, p.hora_pedido, p.valor_total, r.nome as nome_restaurante
from tb_pediidos p
inner join restaurante r on p.id_restaurante = r.cd_restaurante
where p.id_cliente = 1  
and p.hora_pedido >= '2024-09-17' 
order by p.hora_pedido desc;

select r.nome as nome_restaurante, r.endereco, r.telefone, r.tipo_cozinha
from tb_pediidos p
inner join restaurante r on p.id_restaurante = r.cd_restaurante
where p.id_cliente = 1; 





