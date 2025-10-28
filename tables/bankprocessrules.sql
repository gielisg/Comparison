drop table if exists "informix".bankprocessrules ;
create table "informix".bankprocessrules 
  (
    proc_rule_id serial not null ,
    proc_rule_type char(1) not null ,
    trans_type char(10),
    trans_desc varchar(254),
    prod_rule_order smallint,
    proc_rule_action char(1),
    amount_cutoff decimal(16,2),
    target_status integer,
    auto_apply char(1) 
        default 'N' not null ,
    target_cont_code char(10),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (proc_rule_type IN ('G' ,'A' )) constraint "informix".rule_type5,
    
    check (auto_apply IN ('Y' ,'N' )) constraint "informix".yes_no
  );

