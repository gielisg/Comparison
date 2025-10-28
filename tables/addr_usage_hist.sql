drop table if exists "informix".addr_usage_hist ;
create table "informix".addr_usage_hist 
  (
    hist_id serial not null ,
    contact_code char(10) not null ,
    addr_type_code char(2) not null ,
    address_ref integer not null ,
    start_dt datetime year to second not null ,
    end_dt datetime year to second 
        default current year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

