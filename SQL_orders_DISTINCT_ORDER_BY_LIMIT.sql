use new_shop;
select name, discount from category;
select discount, name from category;
select discount from category;
select distinct discount from category;

select * from category order by discount;
select * from category order by discount desc;

select * from category WHERE discount <> 0 ORDER by discount desc;  

# вывести первые 2 категории товара
SELECT * FROM category limit 2;

# вывести первые 2 категории товара со скдикой не равной нулю
SELECT * FROM category WHERE discount <> 0 LIMIT 2;



