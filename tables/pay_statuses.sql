drop table if exists "informix".pay_statuses ;
create table "informix".pay_statuses 
  (
    status_id serial not null ,
    status_narr varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

