SELECT * FROM Customers
where City like 'L%o_';


SELECT
                City,
                Country,
                'Customers' as Type
                FROM Customers
    where Country ='Germany'
union
SELECT
                City,
                Country,
                'Suppliers' as Type
                FROM Suppliers
    where Country ='Germany';
