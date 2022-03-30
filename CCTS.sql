desc payment_method
select *
from payment_method;

select * from 
payment_mode
order by id

select * 
from payment join payment_method
using (id)
order by id

select id as trans_id, payment_date, amount_paid, payment_mode_id 
from payment join payment_method
using (id)
order by id

select * 
from payment join payment_mode
using (id)
order by id



select * from payment

select id, payment_date, payment_method_id
from payment
where payment_date between "2016-11-01" and "2016-11-30" ;


select * from payment
Select * from payment_mode
use guesthouse


select x.id, x.description, y.id, 
		y.payment_mode_id, z.id, 
        z.amount_paid, z.payment_method_id
from payment_mode x join payment_method y 
on x.id = y.payment_mode_id
join payment z
on y.id = z.payment_method_id
where z.payment_date between "2016-11-01" and "2016-11-30" 
and x.description = "Cash"

select sum(z.amount_paid)
from payment_mode x join payment_method y 
on x.id = y.payment_mode_id
join payment z
on y.id = z.payment_method_id
where z.payment_date between "2016-11-01" and "2016-11-30" 
and x.description = "Cash"

#Bill Wiggin

Select * from guest
where first_name = "Bill"
and last_name = "Wiggin"

select * from service_type

select * from extra

select * from booking
where guest_id = 1252