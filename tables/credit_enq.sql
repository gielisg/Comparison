drop table if exists "informix".credit_enq ;
create table "informix".credit_enq 
  (
    request_id serial not null ,
    request_type char(18),
    credit_ref integer not null ,
    event_ref integer not null ,
    request_dt datetime year to second 
        default current year to second,
    request_user varchar(18,10) 
        default user not null ,
    bus_unit_code char(2) not null ,
    cred_stat_id integer not null ,
    external_ref varchar(254,20),
    credit_required decimal(10,2),
    score decimal(6,2),
    approved char(1),
    match char(1),
    err_code varchar(20),
    err_desc varchar(254),
    comments varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

