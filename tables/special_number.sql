drop table if exists "informix".special_number ;
create table "informix".special_number 
  (
    phone_num varchar(64) not null ,
    attempt_status char(1),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

