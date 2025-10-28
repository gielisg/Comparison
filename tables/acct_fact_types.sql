drop table if exists "informix".acct_fact_types ;
create table "informix".acct_fact_types 
  (
    acct_fact_key varchar(32) not null ,
    acct_fact_desc varchar(255) not null ,
    acct_fact_disp char(1) 
        default 'N' not null ,
    acct_fact_order smallint 
        default 3 not null ,
    acctfactkey_wefr datetime year to second not null ,
    acctfactkey_weto datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (acct_fact_disp IN ('Y' ,'N' )) constraint "informix".yes_no
  );

