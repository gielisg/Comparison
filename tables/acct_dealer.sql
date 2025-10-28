drop table if exists "informix".acct_dealer ;
create table "informix".acct_dealer 
  (
    debtor_code char(10) not null ,
    dealer_id char(10) not null ,
    acctdealwef datetime year to second 
        default  datetime (1990-01-01 00:00:00) year to second not null ,
    reason_id integer,
    acctdealwet datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    acctdealdelg char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (acctdealdelg IN ('Y' ,'N' ))
  );

