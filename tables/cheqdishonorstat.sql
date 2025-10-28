drop table if exists "informix".cheqdishonorstat ;
create table "informix".cheqdishonorstat 
  (
    status_id serial not null ,
    status_narr varchar(254,20) not null ,
    sys_status char(1),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

