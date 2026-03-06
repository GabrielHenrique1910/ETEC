-- LISTA DE EXERCÍCIOS
/*
1) exibir o nome do cliente, id da loja e o endereço da loja onde ele é cadastrado
2) exibir o filme e os nomes dos artistas que participaram do filme
3) exibir o filme e a loja onde ele se encontra
4) exibir o filme e a quantidade de cópias existentes por título
5) exibir o filme e a quantidade de cópias existentes por título em cada loja
6) exibir o cliente e a quantidade de locações realizadas por cada cliente
7) exibir o filme e a quantidade de vezes que ele foi alugado
8) exibir o filme e a quantidade de vezes que cada cópia foi alugada
9) exibir o cliente e o valor total gasto por cada cliente
10) exibir os 10 filmes que mais deram lucro por loja
*/
-- ENTREGAR 01 AO 10 DIA 20/09 COMO LISTA 01 - 3BIM

show tables;

-- Customer Data
select * from country;
select * from city;
select * from address;
select * from customer;

-- Business
select * from store;
select * from staff;
select * from payment;
select * from rental;

-- Inventory
select * from film;
select * from category;
select * from film_category;
select * from language;
select * from film_actor;
select * from actor;
select * from inventory;
select * from film_text;

-- 1) EXIBIR O NOME DO CLIENTE, ID DA LOJA E O ENDEREÇO DA LOJA ONDE ELE É CADASTRADO
select concat(first_name, " ", last_name) as "Nome Cliente", store.store_id as "ID Loja", address.address as "Endereço Loja"
from customer
inner join store on customer.store_id = store.store_id
inner join address on store.address_id = address.address_id;

-- 2) EXIBIR O FILME E OS NOMES DOS ARTISTAS QUE PARTICIPARAM DO FILME
select film.title as "Título Filme", concat(actor.first_name, " ", actor.last_name) as "Nome Ator"
from film
inner join film_actor on film.film_id = film_actor.film_id
inner join actor on film_actor.actor_id = actor.actor_id;

-- 3) EXIBIR O FILME E A LOJA ONDE ELE SE ENCONTRA
select film.title as "Titulo Filme", address.address as "Endereço Loja"
from film
inner join inventory on film.film_id = inventory.film_id
inner join store on inventory.store_id = store.store_id
inner join address on store.address_id = address.address_id
order by address.address, film.title;

-- 4) EXIBIR O FILME E A QUANTIDADE DE CÓPIAS EXISTENTES POR TÍTULO
select film.title as "Título Filme", count(inventory.film_id) as "Quantidade Cópias"
from film
inner join inventory on film.film_id = inventory.film_id
group by film.title;

-- 5) EXIBIR O FILME E A QUANTIDADE DE CÓPIAS EXISTENTES POR TÍTULO EM CADA LOJA
select film.title as "Título Filme", address.address as "Endereço Loja", count(inventory.film_id) as "Quantidade Cópias"
from film 
inner join inventory on film.film_id = inventory.film_id
inner join store on inventory.store_id = store.store_id
inner join address on store.store_id = address.address_id
group by film.title, address.address
order by address.address, film.title;

-- 6) EXIBIR O CLIENTE E A QUANTIDADE DE LOCAÇÕES REALIZADAS POR CADA CLIENTE
select concat(customer.first_name, " ", customer.last_name) as "Nome Cliente", count(rental.inventory_id) as "Quantidade Locação"
from customer
inner join rental on customer.customer_id = rental.customer_id
group by customer.customer_id;

-- 7) EXIBIR O FILME E A QUANTIDADE DE VEZES QUE ELE FOI ALUGADO
select film.title as "Título Filme", count(rental.inventory_id) as "Quantidade Alugado"
from film
inner join inventory on film.film_id = inventory.film_id
inner join rental on inventory.inventory_id = rental.inventory_id
group by film.title;

-- # 8) EXIBIR O FILME E A QUANTIDADE DE VEZES QUE CADA CÓPIA FOI ALUGADA
select film.title as "Título Filme", count(rental.inventory_id) as "Quantidade Alugado"
from film
inner join inventory on film.film_id = inventory.film_id
inner join rental on inventory.inventory_id = rental.inventory_id
group by rental.inventory_id;

-- 9) EXIBIR O CLIENTE E O VALOR TOTAL GASTO POR CADA CLIENTE
select concat(customer.first_name, " ", customer.last_name) as "Nome Cliente", sum(payment.amount) as "Valor Gasto"
from customer
inner join payment on customer.customer_id = payment.customer_id
group by customer.customer_id;

-- ## 10) EXIBIR OS 10 FILMES QUE MAIS DERAM LUCRO POR LOJA
select film.title as "Título Filme", address.address as "Endereço Loja", sum(payment.amount) as "Lucro Total"
from film
inner join inventory on film.film_id = inventory.film_id
inner join store on inventory.store_id = store.store_id
inner join address on store.address_id = address.address_id
inner join rental on inventory.inventory_id = rental.inventory_id
inner join payment on rental.rental_id = payment.rental_id
group by address.address_id, film.title
order by store.store_id, sum(payment.amount) desc;