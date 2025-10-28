drop table if exists "informix".ord_hdr_tgr ;
create table "informix".ord_hdr_tgr 
  (
    ord_id integer not null ,
    tgr_dt datetime year to second 
        default current year to second not null ,
    read_dt datetime year to second
  );

