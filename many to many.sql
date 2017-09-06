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
