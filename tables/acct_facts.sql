drop table if exists "informix".acct_facts ;
create table "informix".acct_facts 
  (
    acct_fact_ref serial not null ,
    debtor_code char(10) not null ,
    acct_fact_key varchar(32) not null ,
    acct_fact_val varchar(255) not null ,
    acct_fact_wefr datetime year to second not null ,
    acct_fact_weto datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

