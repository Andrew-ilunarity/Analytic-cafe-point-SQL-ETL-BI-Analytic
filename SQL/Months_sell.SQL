--Логіка сортування за датою та загальною виручкою по категоріям--
create view Global_category as
	select 
	to_char(co."Transaction Date",'MM-YYYY') as "Date",
	co."Item",
	sum("Total Spent") as "Total"
from cafe_orders co 
group by "Date", co."Item"
order by "Date"
;
