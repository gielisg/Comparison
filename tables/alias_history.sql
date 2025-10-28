drop table if exists "informix".alias_history ;
create table "informix".alias_history 
  (
    hist_id serial not null ,
    contact_code char(10) not null ,
    alias_name varchar(254,32) not null ,
    alias_type char(2),
    start_dt datetime year to second not null ,
    end_dt datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

