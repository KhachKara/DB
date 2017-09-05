CREATE SCHEMA `new_shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;

CREATE TABLE `new_shop`.`category` (
  `id` INT NOT NULL,
  `name` VARCHAR(128) NOT NULL,
  `discount` TINYINT NOT NULL,
  PRIMARY KEY (`id`));
CREATE TABLE `new_shop`.`brend` (
  `id` INT NOT NULL,
  `name` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `new_shop`.`type` (
  `id` INT NOT NULL,
  `name` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`));
  
SELECT * FROM new_shop.category;
use new_shop;
insert into category (id, name, discount, alias_name) values (3, 'Женская обувь', 10, null);
insert into category (id, name, discount, alias_name) values (4, 'Мужская обувь', 15, 'Men''s shoose');

insert into category (name, discount) values ('Шляпы', 0);
insert into brend (name) values ('Marc  O''Polo');
insert into brend (name) values ('ALCOTT');
insert into brend (name) values ('GUESS');

insert into `product_type` (name) values ('Платье');
insert into `product_type` (name) values ('Футболка');
