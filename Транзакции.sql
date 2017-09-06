insert into new_shop.user_bank_account (id, money, user_name) values ('1', '100', 'Дмитрий');

insert into `new_shop`.`user_bank_account` (id, money, user_name) values ('2', '200', 'Евгений');


select * from `new_shop`.`user_bank_account`;


start transaction;	
	update `new_shop`.`user_bank_account` set money = money - 100 where id = 1;
	update `new_shop`.`user_bank_account` set money = money + 100 where id = 2;
commit;

CREATE TABLE `new_shop`.`user_bank_accaunt` (
  `id` INT NOT NULL,
  `money` DECIMAL(10,2) NOT NULL,
  `user_bane` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
ALTER TABLE `new_shop`.`user_bank_accaunt` 
RENAME TO  `new_shop`.`user_bank_account` ;

ALTER TABLE `new_shop`.`user_bank_account` 
CHANGE COLUMN `user_bane` `user_name` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL ;
