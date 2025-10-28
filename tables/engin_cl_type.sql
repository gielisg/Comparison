drop table if exists "informix".engin_cl_type ;
create table "informix".engin_cl_type 
  (
    calltype integer not null ,
    calltype_narr varchar(128) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

