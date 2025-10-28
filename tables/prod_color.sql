drop table if exists "informix".prod_color ;
create table "informix".prod_color 
  (
    prod_color_id serial not null ,
    prod_color_name varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

