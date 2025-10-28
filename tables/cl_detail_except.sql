drop table if exists "informix".cl_detail_except ;
create table "informix".cl_detail_except 
  (
    cl_ser_num integer not null ,
    excepttypecode char(4) not null ,
    exceptdata varchar(64) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

