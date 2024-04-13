select * from vehicles v full join owners o on o.id = v.owner_id;
select o.first_name, o.last_name, count(v.*) from vehicles v join owners o on o.id = v.owner_id order by o.first_name asc;
select o.first_name, o.last_name, avg(v.price), count(v.*) from vehicles v join owners o on o.id = v.owner_id group by o.owner_id where count(v.*) > 1 and avg(v.price) > 10000 order by o.first_name desc;