drop function
if exists
top5
cascade
;

create
function top5 ()
returns setof tNuplet
as $$

	declare
	
		cursorNuplet cursor
		for
			select product_name, list_price
			from demo_product_info
			order by list_price desc
		;
	
		nuplet tNuplet;
		lignesLues int;
	
	
	begin
		
		open cursorNuplet;
		fetch cursorNuplet into nuplet;
		lignesLues := 1;
		
		while
			found
			and lignesLues <= 5
		loop
			
			return next nuplet;
			fetch cursorNuplet into nuplet;
			lignesLues := lignesLues + 1;
			
		end loop
		;
	
		close cursorNuplet;
		return;
		
	end
	
$$ LANGUAGE plpgsql
;