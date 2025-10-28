drop table if exists "informix".lcsp ;
create table "informix".lcsp 
  (
    lcsp_id serial not null ,
    lcsp_code varchar(254),
    name varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

