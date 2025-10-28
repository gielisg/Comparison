drop table if exists "informix".ipnd_exclude ;
create table "informix".ipnd_exclude 
  (
    contact_code char(10) not null ,
    excl_from_dt datetime year to second,
    excl_to_dt datetime year to second,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

