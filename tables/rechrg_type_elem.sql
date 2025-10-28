drop table if exists "informix".rechrg_type_elem ;
create table "informix".rechrg_type_elem 
  (
    rechrg_type_id integer not null ,
    element_id integer not null ,
    expiry_days smallint,
    exp_on_new_rechg char(1) 
        default 'Y' not null ,
    dflt_element char(1) 
        default 'N' not null ,
    dflt_value decimal(16,2) 
        default 0.00,
    allow_var_value char(1) 
        default 'N' not null ,
    allow_var_expiry char(1) 
        default 'N' not null ,
    set_open_value_0 char(1) 
        default 'N',
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dflt_value >= 0. ) constraint "informix".greater_eq537,
    
    check (exp_on_new_rechg IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (dflt_element IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (allow_var_value IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (allow_var_expiry IN ('Y' ,'N' )) constraint "informix".yes_no
  );

