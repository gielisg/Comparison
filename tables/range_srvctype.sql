drop table if exists "informix".range_srvctype ;
create table "informix".range_srvctype 
  (
    range_id integer not null ,
    srvctypecode char(4) not null ,
    note lvarchar(1000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

