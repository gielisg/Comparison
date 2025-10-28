drop table if exists "informix".device_condition ;
create table "informix".device_condition 
  (
    condition_id serial not null ,
    condition_narr varchar(254,32) not null ,
    dflt_status_id integer not null ,
    note lvarchar(10000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

