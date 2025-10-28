drop table if exists "informix".task_time_log ;
create table "informix".task_time_log 
  (
    time_log_id serial not null ,
    task_id integer not null ,
    contact_code char(10) not null ,
    from_dt datetime year to second not null ,
    num_minutes integer not null ,
    chargeable char(1) not null ,
    note varchar(255),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (num_minutes > 0 ) constraint "informix".greater_than_0,
    
    check (chargeable IN ('Y' ,'N' )) constraint "informix".yes_no
  );

