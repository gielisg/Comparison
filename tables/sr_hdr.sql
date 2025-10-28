drop table if exists "informix".sr_hdr ;
create table "informix".sr_hdr 
  (
    sr_id serial not null ,
    bus_unit_code char(2) not null ,
    sr_num char(10) not null ,
    sr_dt datetime year to second 
        default current year to second not null ,
    status_id smallint 
        default 1 not null ,
    reason_id integer not null ,
    contact_code char(10) not null ,
    sr_note varchar(254),
    err_desc varchar(254),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status_id IN (1 ,2 ,3 ,4 ,5 ,6 )) constraint "informix".one_2_3_4_5_622
  );

