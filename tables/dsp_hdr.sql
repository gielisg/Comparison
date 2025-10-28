drop table if exists "informix".dsp_hdr ;
create table "informix".dsp_hdr 
  (
    dsp_id serial not null ,
    bus_unit_code char(2) not null ,
    dsp_seq_num integer not null ,
    warehouse_code char(2) not null ,
    dsp_status_code char(4) not null ,
    dsp_stat_dt datetime year to second not null ,
    del_method char(1),
    pl_id integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (del_method IN ('P' ,'R' ,'C' )) constraint "informix".del_method54
  );

