drop table if exists "informix".thread ;
create table "informix".thread 
  (
    thread_ref serial not null ,
    thread_header varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

