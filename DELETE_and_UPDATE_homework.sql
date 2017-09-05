use new_shop;
update category set alias_name = 'Women''s clothing' where id = 1;
update category set alias_name = 'Men''s clothing' where id = 2;
update category set alias_name = 'Women''s shoose' where id = 3;

update brend set name = 'GUESS' where id = 3;

insert into brend (name) value ('Тетя Клава Company');

delete from brend where name = 'Тетя Клава Company';