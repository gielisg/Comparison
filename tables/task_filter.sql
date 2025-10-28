drop table if exists "informix".task_filter ;
create table "informix".task_filter 
  (
    filter_id serial not null ,
    filter_name varchar(32) not null ,
    contact_code char(10) not null ,
    status_id integer,
    sys_status char(1),
    status_flg char(1) 
        default 'Y' not null ,
    type_id integer,
    cat_id integer,
    created_dt_code char(2),
    created_dt_start date,
    created_dt_end date,
    closed_dt_code char(2),
    closed_dt_start date,
    closed_dt_end date,
    res_filter_type char(2) 
        default 'AL' not null ,
    resource_code char(10),
    dep_type char(1),
    priority_id integer,
    client_code char(10),
    due_followup char(1) 
        default 'N' not null ,
    due_sla char(1) 
        default 'N' not null ,
    due_req char(1) 
        default 'N' not null ,
    due datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((created_dt_code IN ('7D' ,'LM' ,'TM' ,'TQ' )) OR (created_dt_code IS NULL ) 
              ) constraint "informix".created_dt_code3,
    
    check ((dep_type IN ('I' ,'C' ,'E' )) OR (dep_type IS NULL ) ) constraint "informix".i_c_e_null3,
    
    check (sys_status IN ('O' ,'C' ,'X' )) constraint "informix".ntwkevntoptn22,
    
    check (res_filter_type IN ('AL' ,'SE' ,'UN' ,'AS' ,'UT' )) constraint "informix".res_filter_type4,
    
    check (due_followup IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (due_sla IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (due_req IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (status_flg IN ('Y' ,'N' )) constraint "informix".yes_no
  );

