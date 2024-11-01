drop type
if exists
typeEmp
cascade
;

create type typeEmp as
(
	rang int,
	nom emp.ename % type
)
;


drop function
if exists
calculRang
cascade
;

create
function calculRang (nb int)
returns int
as $$

	declare
	
		resultat typeEmp;
	
	
	begin
		
		select into

		
	end

$$ LANGUAGE plpgsql
;


drop function
if exists
empQuadratiques
cascade
;

create
function empQuadratiques ()
returns setof typeEmp
as $$

	declare
	
		numEmp int;
		rang int;
		resultat typeEmp;
		
		cursorEmp cursor
		for
			select ename
			from emp
		;
	
	
	begin
		
		-- Initialisation
		
		numEmp := 0;
		
		
		-- Boucle
		
		open cursorEmp;
		
		fetch cursorEmp
		into resultat
		;
		
		while found
		loop
		
			return next
			(
				rang,
				resultat
			)
			;
			
			move forward numEmp
			from cursorEmp
			;
			
			numEmp := numEmp + 1;
			rang := calculRang (numEmp);
			
			fetch cursorEmp
			into resultat
			;
		
		end loop;
		
		close cursorEmp;


		-- Sortie
		
		return;
		
	end

$$ LANGUAGE plpgsql
;
