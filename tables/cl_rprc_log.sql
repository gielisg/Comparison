drop table if exists "informix".cl_rprc_log ;
create table "informix".cl_rprc_log 
  (
    cl_rprc_log_id serial not null ,
    reproc_id integer not null ,
    cl_rprc_log_dtl varchar(255) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

