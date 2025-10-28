drop table if exists "informix".susp_types ;
create table "informix".susp_types 
  (
    susp_code char(4) not null ,
    susp_type_narr varchar(64) not null ,
    chg_code char(4),
    chg_amount decimal(18,10) not null ,
    start_event_type char(2),
    start_event_code char(2),
    sched_strt_event char(1) 
        default 'N' not null ,
    end_event_type char(2),
    end_event_code char(2),
    sched_end_event char(1) 
        default 'N' not null ,
    del_event_type char(2),
    del_event_code char(2),
    sched_del_event char(1) 
        default 'N' not null ,
    max_susp_mths integer not null ,
    contr_ext_code char(4),
    contra_all_chgs char(1) 
        default 'N' not null ,
    contra_chg_prefix varchar(32),
    susptype_enabled char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (sched_strt_event IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (sched_end_event IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (contra_all_chgs IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (susptype_enabled IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (sched_del_event IN ('Y' ,'N' )) constraint "informix".yes_no
  );

