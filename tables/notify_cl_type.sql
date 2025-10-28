drop table if exists "informix".notify_cl_type ;
create table "informix".notify_cl_type 
  (
    call_type char(1) not null ,
    call_type_desc varchar(80),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

