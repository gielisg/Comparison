drop table if exists "informix".ins_status ;
create table "informix".ins_status 
  (
    ins_status_id serial not null ,
    ins_stat_type_code integer not null ,
    ins_status_narr varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

