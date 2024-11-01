drop type
if exists
tNuplet
cascade
;

create type tNuplet as
(
	texte varchar,
	nombre int
)
;


drop function
if exists
listeProd
cascade
;

create
function listeProd ()
returns setof tNuplet
as $$

	declare
	
		cursorNuplet cursor
		for
			select product_name, list_price
			from demo_product_info
		;
	
		nuplet tNuplet;
	
	
	begin
		
		open cursorNuplet;
		fetch cursorNuplet into nuplet;
		
		while found
		loop
			
			return next nuplet;
			fetch cursorNuplet into nuplet;
			
		end loop
		;
	
		close cursorNuplet;
		return;
		
	end
	
$$ LANGUAGE plpgsql
;
