use new_shop;
select * from product;	

INSERT INTO `new_shop`.`product` (`id`, `brend_id`, `produc_type_id`, `category_id`, `price`) VALUES ('7', '3', '2', '4', '4552');
INSERT INTO `new_shop`.`product` (`id`, `brend_id`, `produc_type_id`, `category_id`, `price`) VALUES ('8', '2', '1', '4', '45656');
INSERT INTO `new_shop`.`product` (`id`, `brend_id`, `produc_type_id`, `category_id`, `price`) VALUES ('9', '1', '1', '2', '2323');
INSERT INTO `new_shop`.`product` (`id`, `brend_id`, `produc_type_id`, `category_id`, `price`) VALUES ('10', '3', '2', '3', '5656');

select * from category where id >= 1 and id <=3;