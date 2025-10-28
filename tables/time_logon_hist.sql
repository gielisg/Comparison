drop table if exists "informix".time_logon_hist ;
create table "informix".time_logon_hist 
  (
    rec_id serial not null ,
    contact_code char(10) not null ,
    dt datetime year to second 
        default current year to second not null ,
    action char(1) not null ,
    created_dt datetime year to second 
        default current year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (action IN ('O' ,'X' )) constraint "informix"._action
  );

