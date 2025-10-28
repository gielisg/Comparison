drop table if exists "informix".task_contact ;
create table "informix".task_contact 
  (
    task_id integer not null ,
    contact_code char(10) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

