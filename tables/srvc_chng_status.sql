drop table if exists "informix".srvc_chng_status ;
create table "informix".srvc_chng_status 
  (
    status_id integer not null ,
    status_narr varchar(32),
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

