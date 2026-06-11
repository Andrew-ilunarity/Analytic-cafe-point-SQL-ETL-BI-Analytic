--Перевірка аномалій за сумою--
select 
	co."transaction ID",
	co."Item",
	co."Price per Unit" 
from cafe_orders co 
inner join cafe_price cp
	on co."Price per Unit"::real = cp."Price Per Unit"::real
where co."Price per Unit" != cp."Price Per Unit" 
;
