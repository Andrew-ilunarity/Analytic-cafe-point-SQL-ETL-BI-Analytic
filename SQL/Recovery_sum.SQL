--Логіка відновлення значень в "грязній" базі--
update cafe_orders co 
set "Item" = 'Tea'
where "Price per Unit" = 1.5
	and co."Item" = ''
		or co."Item" is null
		or co."Item" = ' '
;
