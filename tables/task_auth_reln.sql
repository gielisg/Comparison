drop table if exists "informix".task_auth_reln ;
create table "informix".task_auth_reln 
  (
    task_id integer not null ,
    auth_dt datetime year to second not null ,
    contact_code char(10) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

