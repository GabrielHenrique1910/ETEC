	use sakila;

-- 11) Exibir o nome do artista e a quantidade de filmes que ele participou:
		select 
		concat(a.first_name, " ", a.last_name) as "Ator", 
		count(fa.actor_id) as "Quantidade de Filmes"
		from film_actor as fa
        
		inner join actor 	as a	on fa.actor_id = a.actor_id
        
		group by a.actor_id
        order by count(fa.actor_id) desc;





-- 12) Exibir o artista e a quantidade de filmes de ação que cada um participou:
		select
		concat(actor.first_name, ' ', actor.last_name) as "Ator", 
		count(f.film_id) as "Quantidade de Filmes de Ação"
		from actor
        
		inner join film_actor 		as f_a 		on f_a.actor_id = actor.actor_id
		inner join film 			as f 		on f.film_id = f_a.film_id
		inner join film_category 	as f_c 		on f_c.film_id = f.film_id
		inner join category		 	as c 		on c.category_id = f_c.category_id
        
		where c.name = 'Action' 
		group by actor.actor_id, actor.first_name, actor.last_name
        order by count(f.film_id) desc;





-- 13) Exibir o id da loja e o lucro por loja:
		select 
        s.store_id as 'ID da Loja' ,
        sum(p.amount) as 'Lucro Total'
		from store as s
        
		inner join payment 		as p 		on s.store_id = p.staff_id
        
		group by s.store_id
		order by 'Lucro Total' desc;





-- 14) Exibir o lucro total das lojas:
		select 
        sum(p.amount) as 'Lucro Total'
		from payment as p;

		



-- 15) Exibir a quantidade de filmes que ainda não foram devolvidos:
		select 
        count(*) as 'Filmes não Devolvidos'
		from rental as r
		where r.return_date is null;





-- 16) Exibir a quantidade de filmes alugados às sextas-feiras:
		select 
        count(*) as 'Filmes Alugados na Sexta'
		from rental as r
		where weekday(r.rental_date) = 4;





-- 17) Exibir a quantidade de filmes que não estão mais disponíveis para locação:
		select 
		count(distinct i.inventory_id) as 'Filmes Indisponíveis'
		from inventory as i
        
		inner join rental 	as r 	on i.inventory_id = r.inventory_id
        
		where r.return_date is null;





-- 18) Exibir somente os clientes que estão inativos no sistema:
		select 
        concat(c.first_name, ' ', c.last_name) as 'Clientes Inativos'
		from customer as c
		where c.active = 0;





-- 19) Exibir o filme e o nome de cada cliente que o alugou:
		select 
        f.title as 'Filme', 
        concat(c.first_name, ' ', c.last_name) as 'Clientes'
		from film as f
        
		inner join inventory 	as i 	on f.film_id = i.film_id
		inner join rental 		as r 	on i.inventory_id = r.inventory_id
		inner join customer 	as c 	on r.customer_id = c.customer_id;





-- 20) Exibir os 10 clientes que mais alugaram filmes de ação:
		select 
		concat(c.first_name, ' ', c.last_name) as 'Cliente',
		count(r.rental_id) as 'Filmes de Ação Alagados'
		from customer as c
        
		inner join rental 			as r 	on c.customer_id = r.customer_id
		inner join inventory 		as i 	on r.inventory_id = i.inventory_id
		inner join film_category 	as fc 	on i.film_id = fc.film_id
		inner join category 		as ca 	on fc.category_id = ca.category_id
        
		where ca.name = 'Action'
		group by c.customer_id
		order by 2 desc
		limit 10;





-- 21) Exibir o filme, a categoria e a quantidade de artistas que participaram do filme:
		select 
        f.title as 'FIlme', 
        c.name as 'Categoria', 
        count(fa.actor_id) as 'Artistas'
		from film as f
        
		inner join film_actor 		as fa 		on f.film_id = fa.film_id
		inner join film_category 	as fc 		on f.film_id = fc.film_id
		inner join category 		as c 		on fc.category_id = c.category_id
        
		group by f.film_id, c.category_id;





-- 22) Exibir a data e a quantidade de filmes alugados por data:
		select 
        r.rental_date as 'DAta', 
        count(r.rental_id) as 'FIlmes Alugados'
		from rental as r
        
		group by r.rental_date
		order by r.rental_date;





-- 23) Exibir a loja e a quantidade de clientes ativos e inativos por loja:
		select 
        s.store_id as 'Loja',
		sum(case when c.active = 1 then 1 else 0 end) as 'Ativos',
		sum(case when c.active = 0 then 1 else 0 end) as 'Inativos'
		from store as s
        
		inner join customer 	as c 	on s.store_id = c.store_id
        
		group by s.store_id;





-- 24) Exibir a loja e o valor a receber (locações pendentes) em cada loja:
		select 
        s.store_id as 'Loja', 
        sum(p.amount) as 'Pendências ($)'
		from store as s
        
		inner join payment	 	as p 	on s.store_id = p.staff_id
		inner join rental 		as r 	on p.rental_id = r.rental_id
        
		where r.return_date is null
		group by s.store_id;





-- 25) Exibir todos os filmes, o id do inventário e o cliente cuja locação ainda não foi finalizada:
		select 
        f.title as 'Filme', 
        i.inventory_id as 'ID do Inventario', 
        concat(c.first_name, ' ', c.last_name) as 'Cliente'
		from film as f
        
		inner join inventory 	as i 	on f.film_id = i.film_id
		inner join rental 		as r 	on i.inventory_id = r.inventory_id
		inner join customer		as c 	on r.customer_id = c.customer_id
        
		where r.return_date is null;

        
        
        
        
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
	select * from film_actor