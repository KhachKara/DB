CREATE TABLE `new_shop`.`order` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(128) NOT NULL,
  `phone` VARCHAR(32) NOT NULL,
  `datetime` DATETIME NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `new_shop`.`order_products` (
  `order_id` INT(11) NOT NULL,
  `product_id` INT(11) NULL,
  `count` INT(11) NULL,
  PRIMARY KEY (`order_id`));

ALTER TABLE `new_shop`.`order_products` 
CHANGE COLUMN `product_id` `product_id` INT(11) NOT NULL ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`order_id`, `product_id`);

INSERT INTO `new_shop`.`product` (`brend_id`, `produc_type_id`, `category_id`, `price`) VALUES ('1', '2', '1', '7999');
INSERT INTO `new_shop`.`product` (`brend_id`, `produc_type_id`, `category_id`, `price`) VALUES ('2', '1', '3', '6999');

INSERT INTO `new_shop`.`order_products` (`order_id`, `product_id`, `count`) VALUES ('1', '1', '1');
INSERT INTO `new_shop`.`order_products` (`order_id`, `product_id`, `count`) VALUES ('1', '2', '3');

INSERT INTO `new_shop`.`order_products` (`order_id`, `product_id`, `count`) VALUES ('1', '10', '5');
DELETE FROM `new_shop`.`order_products` WHERE `order_id`='1' and`product_id`='10';

UPDATE `new_shop`.`order_products` SET `product_id`='5' WHERE `order_id`='1' and`product_id`='2';

ALTER TABLE `new_shop`.`order_products` 
ADD CONSTRAINT `fk_order_products_order_id`
  FOREIGN KEY (`order_id`)
  REFERENCES `new_shop`.`order` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_order_products_products_id`
  FOREIGN KEY (`product_id`)
  REFERENCES `new_shop`.`product` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE `new_shop`.`order_products` 
CHANGE COLUMN `count` `count` INT(11) NOT NULL ;

