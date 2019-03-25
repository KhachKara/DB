use shop;

SELECT * FROM product;
select * from category where id = 1 or id = 3 or id = 2;
select * from category where id >= 1 and id <=3;
select * from category where id IN (1, 2, 3);

select * from product
	inner join category on product.category_id = category.id;

select product.id, price, name from product
	inner join category on product.category_id = category.id; 	

select * from category
	 inner join product on product.category_id = category.id;

select * from product
	inner join category on product.category_id = category.id where discount <= 5;

select * from product
	inner join category on product.category_id = category.id where price < 10000;


-- where price < 10000;

select * from product
  	inner join category on product.category_id = category.id
	inner join brend on brend.id = product.brend_id
 	inner join product_type on product_type.id = product.produc_type_id;


select category.name, category.discount, brend.name, price from product
  	inner join category on product.category_id = category.id
	inner join brend on brend.id = product.brend_id
 	inner join product_type on product_type.id = product.produc_type_id where price <= 9000;


select brend.name as 'Бренд', category.name as 'Категория', category.alias_name as 'Псевдоним', 
category.discount as 'Скидка', product_type.name as 'Тип товара', price as 'Цена' from product
	inner join product_type on product.produc_type_id = product_type.id
    inner join brend on brend.id = product.brend_id
    -- inner join product_type on product_type.id = product.produc_type_id;
    inner join category on category_id = product.category_id
    where product_type.name = 'Футболка';