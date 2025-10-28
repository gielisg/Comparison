drop table if exists "informix".billrunlastfile ;
create table "informix".billrunlastfile 
  (
    lastfileref serial not null ,
    billrunref integer not null ,
    nt_file_num integer not null ,
    loaded_calls char(1) not null ,
    loaded_chgs char(1) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (loaded_calls IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (loaded_chgs IN ('Y' ,'N' )) constraint "informix".yes_no
  );

