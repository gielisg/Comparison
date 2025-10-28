drop table if exists "informix".acct_due ;
create table "informix".acct_due 
  (
    debtor_code char(10) not null ,
    bill_period integer not null ,
    cycle_code char(2) not null 
  );

