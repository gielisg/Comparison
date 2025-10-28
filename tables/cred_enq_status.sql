drop table if exists "informix".cred_enq_status ;
create table "informix".cred_enq_status 
  (
    cred_stat_id integer not null ,
    cred_stat_narr varchar(32) not null ,
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

