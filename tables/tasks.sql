drop table if exists "informix".tasks ;
create table "informix".tasks 
  (
    task_id serial not null ,
    type_id integer not null ,
    task_num char(10) not null ,
    status_id integer not null ,
    resol_id integer,
    priority_id integer not null ,
    group_id integer 
        default 0 not null ,
    task_desc varchar(254,30),
    task_description lvarchar(10000),
    task_res_narr varchar(254,50),
    task_resolution lvarchar(10000),
    created_dt datetime year to second 
        default current year to second not null ,
    required_dt datetime year to second,
    comp_dt datetime year to second,
    est_dt datetime year to second,
    sla_dt datetime year to second,
    nxt_fu_dt datetime year to second,
    usr_visible char(1) 
        default 'Y' not null ,
    task_email_addr varchar(254),
    task_emailad_ref integer,
    requsr_name varchar(64),
    task_requsr_ref integer,
    requested_by char(10),
    created_by varchar(18) 
        default user not null ,
    last_usr_prompt datetime year to second,
    num_usr_prompts smallint 
        default 0 not null ,
    last_res_prompt datetime year to second,
    num_res_prompts smallint 
        default 0 not null ,
    last_sla_prompt datetime year to second,
    num_sla_prompts smallint 
        default 0 not null ,
    last_prompt_stat integer,
    customer_ref varchar(254),
    faq_item char(1) 
        default 'N' not null ,
    faq_tag varchar(50),
    quoted_hrs decimal(6,2),
    quoted_price decimal(8,2),
    quoted_fixed char(1) 
        default 'N' not null ,
    thread_ref integer,
    invoice_num varchar(20),
    cust_rqst_date date,
    percent_complete smallint 
        default 0 not null ,
    ticket char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (num_usr_prompts >= 0 ) constraint "informix".greater_eq507,
    
    check (num_res_prompts >= 0 ) constraint "informix".greater_eq508,
    
    check (num_sla_prompts >= 0 ) constraint "informix".greater_eq509,
    
    check ((percent_complete >= 0 ) AND (percent_complete <= 100 ) ) constraint "informix".gte_0_lte_100_9,
    
    check (usr_visible IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (faq_item IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (quoted_fixed IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (ticket IN ('Y' ,'N' )) constraint "informix".yes_no
  );

