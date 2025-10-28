drop table if exists "informix".med_status ;
create table "informix".med_status 
  (
    med_status_id integer not null ,
    sys_status char(1) not null ,
    med_status_desc varchar(254,20) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

