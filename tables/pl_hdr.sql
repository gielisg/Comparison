drop table if exists "informix".pl_hdr ;
create table "informix".pl_hdr 
  (
    pl_id serial not null ,
    bus_unit_code char(2) not null ,
    pl_dt datetime year to second,
    contact_code char(10) not null ,
    ord_priority smallint,
    del_method char(1),
    status_id smallint not null ,
    status_dt datetime year to second,
    print_dt datetime year to second,
    con_print_dt datetime year to second
  );

