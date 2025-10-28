drop table if exists "informix".asd_code ;
create table "informix".asd_code 
  (
    asd_code char(3) not null ,
    asd_name varchar(15) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

