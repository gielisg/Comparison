drop table if exists "informix".webill_chnrv ;
create table "informix".webill_chnrv 
  (
    chnrv_id serial not null ,
    event_ref integer not null ,
    nt_file_num integer not null ,
    service_num char(17),
    basket_num char(3)
  );

