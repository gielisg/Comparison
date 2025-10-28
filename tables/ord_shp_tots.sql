drop table if exists "informix".ord_shp_tots ;
create table "informix".ord_shp_tots 
  (
    bus_unit_code char(2) not null ,
    rpt_date date not null ,
    bus_unit_narr char(32) not null ,
    rdy_cnt integer 
        default 0 not null ,
    shp_cnt integer 
        default 0 not null ,
    avg_shp_hrs decimal(8,1) 
        default 0.0 not null 
  );

