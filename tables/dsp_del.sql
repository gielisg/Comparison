drop table if exists "informix".dsp_del ;
create table "informix".dsp_del 
  (
    dsp_id integer not null ,
    del_dtl_ref integer not null ,
    courier_code char(4) not null ,
    con_note_num char(20),
    dsp_status char(4),
    dsp_stat_dt datetime year to second,
    issue_dt datetime year to second 
        default current year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

