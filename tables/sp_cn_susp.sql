drop table if exists "informix".sp_cn_susp ;
create table "informix".sp_cn_susp 
  (
    sp_cn_susp_ref serial not null ,
    sp_cn_ref integer not null ,
    susp_code char(4) not null ,
    susp_narr varchar(255) not null ,
    susp_start_dt datetime year to second not null ,
    susp_end_dt datetime year to second not null ,
    sp_cn_chg_ref integer,
    sp_contr_ext_num integer,
    start_event_ref integer,
    end_event_ref integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

