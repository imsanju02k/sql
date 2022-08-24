select * from sales;

select Amount,GeoID,SaleDate from sales;

select SaleDate,Amount,Boxes,Amount/Boxes as 'Amount per box' from sales;

select * from sales where Amount >1000 order by Amount desc;

select * from sales where amount>10000 and SaleDate >='2022-01-01';

select SaleDate,Amount from sales where amount >10000 and year(SaleDate)=2022 order by amount desc;

select * from sales
where  boxes>0 and boxes <=50;

select * from sales where boxes between 0 and 50;

select SaleDate,Amount,Boxes,weekday(SaleDate) as 'Day of week'from sales where weekday(SaleDate)=4;

select * from people;

select * from people 
where team in('Delish','Jucies');


select SaleDate,Amount ,
	   case  when amount <1000 then 'under 1k'
			 when amount <5000 then 'under 5k'
             when amount <10000 then 'under 10k'
		else '10 or more'
	end as 'Amount Category'
from sales;
