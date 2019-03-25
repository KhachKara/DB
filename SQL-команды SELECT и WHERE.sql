SELECT * from category;
select * from category where id = 3;
select * from category where discount <> 0;
select * from category where discount > 5;
select * from category where (discount > 5) and (discount < 15) ;
select * from category where (discount < 5) or (discount >= 10) ;
select * from category where not (discount < 5);
select * from category where alias_name is not null;
select * from category where alias_name is null;