drop table if exists "informix".event ;
create table "informix".event 
  (
    event_ref serial not null ,
    event_type char(2) not null ,
    event_code char(2) not null ,
    created_by varchar(18) 
        default user not null ,
    created_tm datetime year to second 
        default current year to second not null 
  );

