drop table if exists "informix".ntfl_chgdtl_hist ;
create table "informix".ntfl_chgdtl_hist 
  (
    chgdtl_hist_ref serial not null ,
    nt_fl_dtl_ref integer not null ,
    nt_fl_dtl_seqn integer not null ,
    old_status_id integer not null ,
    new_status_id integer not null ,
    source char(2) 
        default 'SE' not null ,
    note varchar(255),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (source IN ('MN' ,'SE' ,'SP' ,'FX' ,'ON' ,'OF' ,'CR' )) constraint "informix".mn_se9
  );

