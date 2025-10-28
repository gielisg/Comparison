drop table if exists "informix".pay_code_type ;
create table "informix".pay_code_type 
  (
    pay_code_type char(1) not null ,
    pay_code_narr varchar(32) not null ,
    pay_code_order integer 
        default 1 not null ,
    pay_code_visible char(1) 
        default 'Y' not null ,
    pay_code_default char(1) not null ,
    acct_default char(1) not null ,
    strtypecd char(6),
    acc_num_narr varchar(32),
    acc_name_narr varchar(32),
    bsb_narr varchar(32),
    exp_date_narr varchar(32),
    show_subs_owned char(1) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (pay_code_visible IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (pay_code_default IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (acct_default IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (show_subs_owned IN ('Y' ,'N' )) constraint "informix".yes_no
  );

