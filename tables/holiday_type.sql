drop table if exists "informix".holiday_type ;
create table "informix".holiday_type 
  (
    hol_type_code char(10) not null ,
    hol_type_narr varchar(64) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

