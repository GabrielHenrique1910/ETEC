	use sakila;

-- 1) Exibir o nome do cliente, id da loja e o endereço da loja onde ele é cadastrado:
		select 
		concat(first_name, " ", last_name) as "Cliente", 
		store.store_id as "ID - Loja", 
		address.address as "Endereço - Loja"
		from customer
		inner join store on customer.store_id = store.store_id
		inner join address on store.address_id = address.address_id;
        
        
-- 2) Exibir o filme e os nomes dos artistas que participaram do filme:
		select 
		film.title as "Filme", 
		concat(actor.first_name, " ", actor.last_name) as "Ator"
		from film
		inner join film_actor on film.film_id = film_actor.film_id
		inner join actor on film_actor.actor_id = actor.actor_id;
        
        
-- 3) Exibir o filme e a loja onde ele se encontra:
		select 
		film.title as "Filme", 
		address.address as "Endereço - Loja"
		from film
		inner join inventory on film.film_id = inventory.film_id
		inner join store on inventory.store_id = store.store_id
		inner join address on store.address_id = address.address_id
		order by address.address, film.title;


-- 4) Exibir o filme e a quantidade de cópias existentes por título:
		select film.title as "Filme", 
        	count(inventory.film_id) as "Cópias"
		from film
		inner join inventory on film.film_id = inventory.film_id
		group by film.title;


-- 5) Exibir o filme e a quantidade de cópias existentes por título em cada loja:
		select 
		film.title as "Filme", 
		address.address as "Endereço - Loja",
		count(inventory.film_id) as "Cópias"
		from film 
		inner join inventory on film.film_id = inventory.film_id
		inner join store on inventory.store_id = store.store_id
		inner join address on store.store_id = address.address_id
		group by film.title, address.address
		order by address.address, film.title;


-- 6) Exibir o cliente e a quantidade de locações realizadas por cada cliente:
		select 
		concat(customer.first_name, " ", customer.last_name) as "Cliente", 
		count(rental.inventory_id) as "Locações"
		from customer
		inner join rental on customer.customer_id = rental.customer_id
		group by customer.customer_id;


-- 7) Exibir o filme e a quantidade de vezes que ele foi alugado:
		select 
		film.title as "Filme", 
		count(rental.inventory_id) as "Vezes Alugado"
		from film
		inner join inventory on film.film_id = inventory.film_id
		inner join rental on inventory.inventory_id = rental.inventory_id
		group by film.title;


-- 8) Exibir o filme e a quantidade de vezes que cada cópia foi alugada:
		select 
		film.title as "Filme", 
		count(rental.inventory_id) as "Vezes Alugado"
		from film
		inner join inventory on film.film_id = inventory.film_id
		inner join rental on inventory.inventory_id = rental.inventory_id
		group by rental.inventory_id;


-- 9) Exibir o cliente e o valor total gasto por cada cliente:
		select 
		concat(customer.first_name, " ", customer.last_name) as "Cliente", 
		sum(payment.amount) as "Valor"
		from customer
		inner join payment on customer.customer_id = payment.customer_id
		group by customer.customer_id;


-- 10) Exibir os 10 filmes que mais deram lucro por loja:
		select 
		film.title as "Filme", 
		address.address as "Endereço - Loja", 
		sum(payment.amount) as "Lucro"
		from film
		inner join inventory on film.film_id = inventory.film_id
		inner join store on inventory.store_id = store.store_id
		inner join address on store.address_id = address.address_id
		inner join rental on inventory.inventory_id = rental.inventory_id
		inner join payment on rental.rental_id = payment.rental_id
		group by address.address_id, film.title
		order by store.store_id, sum(payment.amount) desc;


-- 11) Exibir o nome do artista e a quantidade de filmes que ele participou:
		select 
		concat(actor.first_name, " ", actor.last_name) as "Ator", 
		count(film_actor.actor_id) as "Quantidade de Filmes"
		from 
		film_actor
		inner join actor on film_actor.actor_id = actor.actor_id
		group by actor.actor_id;


	select * from country;
	select * from city;
	select * from address;
	select * from customer;
	-----------------------
	select * from store;
	select * from staff;
	select * from payment;
	select * from rental;
	-----------------------
	select * from film;
	select * from category;
	select * from film_category;
	select * from language;
	select * from film_actor;
	select * from actor;
	select * from inventory;
	select * from film_text;
