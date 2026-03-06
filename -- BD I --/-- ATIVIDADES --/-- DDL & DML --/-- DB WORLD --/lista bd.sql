use world;
    
-- 1) exibir a região, o país e a forma de governo

		select 
		region, name, governmentform
		from country;
        
-- 2) exibir o continente, o país e a expectativa de vida dos países com expectativa de vida superior a 65 anos

		select 
		continent, name, lifeexpectancy
		from country
        where 
        lifeexpectancy > 65;
        
-- 3) exibir o continente e a quantidade de países por continente cuja população tenha expectativa de vida inferior a 60 anos

		select 
		continent, count(*)
		from country
		where lifeexpectancy < 60
		group by continent;
        
-- 4) exibir o continente e a quantidade de países não independentes por continente

		select 
		continent, count(*)
		from country
		where 
		indepyear is null
		group by continent;
        
-- 5) exibir o continente e a população total que vive em monarquias

		select 
        continent, sum(population)
        from country
        where
        governmentform = 'monarchy'
        group by continent;
        
-- 6) exibir o idioma e a quantidade de países que tem o espanhol como idioma oficial ou não

		select
        name, count(*)