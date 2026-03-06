use sakila;

select * from customer;
select * from address;
select * from country;
select * from city;
select * from film;
select * from actor;
select * from film_actor;
select * from inventory;

-- 1) exibir o nome do cliente, id da loja e o endereço da loja onde ele é cadastrado:
	select 
    customer.first_name,
    customer.last_name,
    store.store_id,
    address.address
    from customer
	inner join address on customer.address_id = address.address_id
    inner join store on store.address_id = address.address_id;
    
    
-- 2) exibir o filme e os nomes dos artistas que participaram do filme:
	select 
    film_title as 'filme',
    concat(fisrt_name, '', last_name) as ator
    from film
    inner join film_actor as f on f.film_id = film.film_id
    inner join actor as a on a.actor_id = f.actor_id;
    


-- 3) exibir o filme e a loja onde ele se encontra:
	select
    title as 'filme',
    
    


-- 4) exibir o filme e a quantidade de cópias existentes por título:



-- 5) exibir o filme e a quantidade de cópias existentes por título em cada loja:



-- 6) exibir o cliente e a quantidade de locações realizadas por cada cliente:



-- 7) exibir o filme e a quantidade de vezes que ele foi alugado:



-- 8) exibir o filme e a quantidade de vezes que cada cópia foi alugada:



-- 9) exibir o cliente e o valor total gasto por cada cliente:



-- 10) exibir os 10 filmes que mais deram lucro por loja:
