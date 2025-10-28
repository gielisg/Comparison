drop table if exists "informix".cont_phone ;
create table "informix".cont_phone 
  (
    phone_ref serial not null ,
    phone_area char(5),
    phone_num varchar(64),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

