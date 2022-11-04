--- ## ANY AND ALL OPERATIONS
--- ANY
select * from [Order Details]
where UnitPrice>250

---ANY = or
select * 
From Products
where ProductID = ANY (select Distinct ProductID
from [Order Details] Where UnitPrice>250)

Select *
From ProductID
where ProductID = ANY (select Distinct ProductID
from [Order Details] Where Quantity>110)


--- ALL = AND
select *
From ProductID
Where ProductID = ALL (Select Distinct ProductID
From [Order Details] where Quantity > 110)


