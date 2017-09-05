CREATE TABLE `new_shop`.`product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `brend_id` INT NOT NULL,
  `produc_type_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`));
  
insert into product (brend_id, produc_type_id, category_id, price) values (1, 1, 1, 8999);
insert into product (brend_id, produc_type_id, category_id, price) values (10, 1, 1, 8999);
insert into product (brend_id, produc_type_id, category_id, price) values (2, 2, 2, 5000);
insert into product (brend_id, produc_type_id, category_id, price) values (1, 3, 3, 6000);

ALTER TABLE `new_shop`.`product` 
ADD INDEX `fk_brend_product_idx` (`brend_id` ASC);
ALTER TABLE `new_shop`.`product` 
ADD CONSTRAINT `fk_brend_product`
  FOREIGN KEY (`brend_id`)
  REFERENCES `new_shop`.`brend` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
