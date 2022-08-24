select geoId,sum(amount),avg(amount),sum(Boxes)
from sales
group by GeoID;

select g.geo,sum(amount),avg(amount),sum(Boxes)
from sales s
join geo g on s.geoid =g.GeoID
group by g.geo;

select pr.category,p.team,sum(boxes),sum(amount)
from sales s
join people p on p.spid =s.spid
join products pr on pr.pid=s.pid
group by pr.category,p.team;


select pr.category,p.team,sum(boxes),sum(amount)
from sales s
join people p on p.spid =s.spid
join products pr on pr.pid=s.pid
where p.team <> ''
group by pr.category,p.team
order by pr.category,p.team;


select pr.product, sum(s.amount) as 'Total Amount'
from sales s
join products pr on pr.pid =s.pid
group by pr.product
order by 'Total Amount' desc
limit 10;