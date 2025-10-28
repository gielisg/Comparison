drop table if exists "informix".acc_pay_method ;
create table "informix".acc_pay_method 
  (
    acc_pay_meth_ref serial not null ,
    debtor_code char(10) not null ,
    pay_code char(2) not null ,
    acct_name char(32) not null ,
    bank_sort_num char(7),
    cvv varchar(5),
    exp_date date,
    subs_owned char(1) 
        default 'N' not null ,
    acct_cc_num varchar(20),
    protected char(1) 
        default 'N' not null ,
    exported char(1) 
        default 'N' not null ,
    external_id varchar(64),
    external_id2 varchar(64),
    reg_pay_prov_id integer,
    user_category varchar(30),
    user_label varchar(80),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (exported IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (protected IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (subs_owned IN ('Y' ,'N' )) constraint "informix".yes_no
  );

