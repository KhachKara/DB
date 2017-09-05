use new_shop;
update category set name = 'Головные уборы' where id = 5;
select * from category;
update category set discount = 3 where discount = 0;
update category set discount = 0 where id = 2 or id = 5;
update category set discount = 0 where id in (2, 5);

delete from category where name = 'Головные уборы';