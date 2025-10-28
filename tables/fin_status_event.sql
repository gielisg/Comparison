drop table if exists "informix".fin_status_event ;
create table "informix".fin_status_event 
  (
    fin_stat_evt_ref serial not null ,
    fin_type_code char(2) not null ,
    fin_stat_code char(2) not null ,
    bus_unit_code char(2),
    reason_id integer,
    pay_source_id integer,
    pay_provider integer,
    event_type char(2) not null ,
    event_code char(2) not null ,
    fin_stat_evt_ord integer 
        default 3 not null ,
    terminal char(1) 
        default 'N' not null ,
    comment varchar(255),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (terminal IN ('Y' ,'N' )) constraint "informix".yes_no
  );

