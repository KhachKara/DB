use shop;

select * from category
	left join product on product.category_id = category.id;


select * from category
	left join product on product.category_id = category.id  
	where product.id is null;
    
select * from category
	right join product on product.category_id = category.id
 	where product.id is null;

UPDATE `new_shop`.`product` SET `produc_type_id`='1' WHERE `id`='5';
UPDATE `new_shop`.`product` SET `produc_type_id`='1' WHERE `id`='7';
UPDATE `new_shop`.`product` SET `produc_type_id`='1' WHERE `id`='10';

select brend.name as 'Бренд', product_type.name as 'Тип товара', category.name as 'Категория', price as 'Цена' from product
	inner join brend on product.brend_id = brend.id
    inner join product_type on product.produc_type_id = product_type.id
    inner join category on product.category_id = category.id
	left join order_products on product.produc_type_id = product.category_id where order_id is null;
