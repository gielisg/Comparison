drop table if exists "informix".dvrdrun_dtl_inst ;
create table "informix".dvrdrun_dtl_inst 
  (
    instance_id serial not null ,
    dtl_id integer not null ,
    status_id integer not null ,
    status_dt datetime year to second 
        default current year to second,
    contact_code char(10),
    note varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

