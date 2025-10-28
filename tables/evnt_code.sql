drop table if exists "informix".evnt_code ;
create table "informix".evnt_code 
  (
    event_type char(2) not null ,
    event_code char(2) not null ,
    event_code_ref serial not null ,
    event_narr varchar(64) not null ,
    start_dt datetime year to second 
        default  datetime (1990-01-01 00:00:00) year to second not null ,
    end_dt datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    event_cat_code char(2) not null ,
    source char(1) not null ,
    resident_event char(1) 
        default 'N' not null ,
    schedulable char(1) 
        default 'Y' not null ,
    set_ref integer,
    chg_sched_dt char(1) 
        default 'Y' not null ,
    cc_disp char(1) 
        default 'Y' not null ,
    dept_code char(3),
    cont_status char(3),
    dflt_priority smallint 
        default 3 not null ,
    auto_code char(9),
    code_prefix char(10),
    archive_days smallint,
    template_id integer,
    eventmsg varchar(254),
    comp_dll varchar(254),
    attach_dir varchar(254),
    doc_upload char(1) 
        default 'N' not null ,
    doc_view char(1) 
        default 'N' not null ,
    init_sla_period integer,
    subs_sla_period integer,
    max_sla_notifs smallint,
    open_sla_period integer,
    disp_self_care char(1) 
        default 'N' not null ,
    sys_record char(1) 
        default 'N' not null ,
    recur_intv integer,
    recur_intv_type char(1),
    recur_instances integer,
    cust_visible char(1) 
        default 'Y' not null ,
    cust_editable char(1) 
        default 'Y' not null ,
    cust_schedulable char(1) 
        default 'Y' not null ,
    default_note lvarchar(3100),
    sla_intv_type char(1),
    sched_team_member varchar(20) 
        default 'No' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dflt_priority IN (1 ,2 ,3 )) constraint "informix".chk_1_2_3109,
    
    check (source IN ('U' ,'S' ,'A' )) constraint "informix".event_source55,
    
    check (sla_intv_type IN ('D' ,'W' ,'M' )) constraint "informix".recur_intv_type12,
    
    check (recur_intv_type IN ('D' ,'W' ,'M' )) constraint "informix".recur_intv_type2,
    
    check (start_dt <= end_dt ) constraint "informix".start_end44,
    
    check (sched_team_member IN ('Yes' ,'No' ,'Mandatory' )) constraint "informix".teammbr_evntcode,
    
    check (resident_event IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (chg_sched_dt IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (cc_disp IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (doc_upload IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (doc_view IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (disp_self_care IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (sys_record IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (cust_visible IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (cust_schedulable IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (cust_editable IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (schedulable IN ('Y' ,'N' ,'M' )) constraint "informix".yes_no
  );

