drop table if exists "informix".commsplan ;
create table "informix".commsplan 
  (
    commsplanid serial not null ,
    name varchar(254,20) not null ,
    from_date date 
        default today not null ,
    to_date date 
        default  '01/01/9999' not null ,
    status integer not null ,
    note lvarchar(20000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status IN (0 ,1 ,2 ,100 )) constraint "informix".status01
  );

