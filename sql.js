select a.maker, count(*)
from product as a
right outer join 
(Select model from pc) as b
on a.model=b.model
group by a.maker