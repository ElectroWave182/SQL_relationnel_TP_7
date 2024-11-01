drop function
if exists
ecartMoyen
cascade
;

create
function ecartMoyen ()
returns float
as $$

	declare
	
		quantite ord.qty % type;
		precedente ord.qty % type;
	
		premier bool;
		ecart int;
		somme float;
		nbLignes int;
		moyenne float;
	
	
	begin
		
		premier := true;
		somme := 0;
		
		select count (qty)
		into nbLignes
		from ord
		where qty is not null
		;
	
		if nbLignes < 2
		then
			raise exception 'La table "ord" a moins de 2 lignes.';
		end if
		;
		
		for quantite
		in
			select qty
			from ord
			where qty is not null
			
		loop
			if premier
			then
				premier := false;
			else
				ecart = abs (quantite - precedente);
				somme := somme + ecart;
			end if;
		
			precedente := quantite;
			
		end loop
		;
		
		moyenne := somme / (nbLignes - 1);
	
		return moyenne;

		
	end

$$ LANGUAGE plpgsql
;
