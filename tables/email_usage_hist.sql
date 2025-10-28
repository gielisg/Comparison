drop table if exists "informix".email_usage_hist ;
create table "informix".email_usage_hist 
  (
    hist_id serial not null ,
    contact_code char(10) not null ,
    email_id integer not null ,
    email_type_code char(2) not null ,
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

