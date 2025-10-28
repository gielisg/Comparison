drop table if exists "informix".hotbill_sched ;
create table "informix".hotbill_sched 
  (
    hotbill_ref serial not null ,
    debtor_code char(10),
    sp_cn_ref integer,
    bill_num char(10),
    cutoff_dt datetime year to second,
    bill_date date,
    due_date date,
    oneoff_chgs_only char(1) 
        default 'N',
    excl_ntwk_chgs char(1) 
        default 'N',
    create_event char(1) 
        default 'Y',
    event_note varchar(255),
    bill_period integer,
    cycle_code char(2),
    bill_ref integer,
    billrunref integer,
    generated_dt datetime year to second,
    include_usage char(1) 
        default 'Y' not null ,
    include_chgs char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (include_usage IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (include_chgs IN ('Y' ,'N' )) constraint "informix".yes_no
  );

