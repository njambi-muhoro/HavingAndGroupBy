-- group By - helps you group the data based on a specific colmn and then 
-- applying aggreagte functions separately to each group

--COUNT - to see how many records we have in the database or result set
select
c.customer_name,
count (*) as result_count
from 
customerz c
group by
c.customer_name
-- the above can be interpreted as, we are looking for the customer name and the number of times 
-- the customer  name appears in the database

-- filtering the grouped data using having where the grouped data result count should 
-- be equal to 2
having 
count (*) = 2
-- if you want your results in a specific order, ascending or descending order
order by 
c.customer_name
asc;
