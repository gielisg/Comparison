drop table if exists "informix".task_types ;
create table "informix".task_types 
  (
    type_id integer not null ,
    type_narr char(32) not null ,
    cat_id integer not null ,
    init_sla_period integer,
    subs_sla_period integer,
    max_sla_notifs smallint,
    open_sla_period integer,
    usr_visible char(1) 
        default 'Y' not null ,
    usr_prompt_mins integer,
    res_prompt_mins integer,
    active char(1) 
        default 'Y' not null ,
    display_order integer 
        default 3 not null ,
    note varchar(255),
    approval_reqd char(1) 
        default 'N' not null ,
    end_usr_edit char(1) 
        default 'N' not null ,
    resource_lock char(1) 
        default 'N' not null ,
    autoclose_period integer 
        default 0 not null ,
    dflt_group_id integer,
    dflt_priority_id integer,
    dflt_status_id integer,
    res_upd_rem_prd smallint,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (usr_visible IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (active IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (approval_reqd IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (end_usr_edit IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (resource_lock IN ('Y' ,'N' )) constraint "informix".yes_no
  );

