drop table if exists "informix".pay_providers ;
create table "informix".pay_providers 
  (
    pay_provider integer not null ,
    provider_narr char(32) not null ,
    online_provider char(1) 
        default 'Y' not null ,
    max_threads smallint 
        default 1 not null ,
    comp_dll varchar(254,20),
    approve char(1) 
        default 'N' not null ,
    generate_receipt char(1) 
        default 'Y' not null ,
    generate_refund char(1) 
        default 'N' not null ,
    tokenisation char(1) 
        default 'N' not null ,
    card_update char(1) 
        default 'N' not null ,
    proc_immediate char(1) 
        default 'N' not null ,
    file_type varchar(16),
    dflt_curr_code char(3),
    gen_empty_file char(1) 
        default 'N' not null ,
    priority smallint 
        default 1 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (priority > 0 ) constraint "informix".greater_than_039,
    
    check (online_provider IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (approve IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (gen_empty_file IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (tokenisation IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (card_update IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (proc_immediate IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (generate_receipt IN ('Y' ,'N' ,'M' )) constraint "informix".yes_no
    
    check (generate_refund IN ('Y' ,'N' ,'M' )) constraint "informix".yes_no
  );

