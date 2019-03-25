use shop;

SELECT * FROM product;

SELECT count(*) FROM product where product.price < 10000;

SELECT sum(price) as total_price, min(price) as min_price, max(price) as max_price FROM product;

select sum(price) as 'ИТОГО', min(price) as 'Минимальная цена', max(price) as 'Максимаоьная цена' FROM product;


INSERT INTO `new_shop`.`order_products` (`order_id`, `product_id`, `count`) VALUES ('2', '7', '2');
INSERT INTO `new_shop`.`order_products` (`order_id`, `product_id`, `count`) VALUES ('2', '5', '2');
INSERT INTO `new_shop`.`order_products` (`order_id`, `product_id`, `count`) VALUES ('2', '9', '4');
INSERT INTO `new_shop`.`order_products` (`order_id`, `product_id`, `count`) VALUES ('1', '8', '3');

select * from product;

select * from `order`;

select * from order_products;

select sum(price), order.user_name from product
	inner join product_type on product.produc_type_id = product_type.id
    right join order_products on order_products.product_id = product.id
    right join `order` on order_products.order_id = `order`.id where order.user_name = 'Василий'

union
    
select sum(price), order.user_name from product
	inner join product_type on product.produc_type_id = product_type.id
    right join order_products on order_products.product_id = product.id
    right join `order` on order_products.order_id = `order`.id where order.user_name = 'Пётр';