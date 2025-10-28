drop table if exists "informix".contact_hist ;
create table "informix".contact_hist 
  (
    contact_hist_id serial not null ,
    contact_code char(10) not null ,
    contact_code_ori char(10) not null ,
    contact_key varchar(64),
    name varchar(80,10) not null ,
    type char(1) not null ,
    sub_type_code char(2) 
        default 'CO' not null ,
    firstname varchar(32),
    cont_status char(3) not null ,
    bus_unit_code char(2) not null ,
    dealer_id char(10),
    event_ref integer,
    from_dt datetime year to second 
        default  datetime (1990-01-01 00:00:00) year to second not null ,
    to_dt datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    ori_updated_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

