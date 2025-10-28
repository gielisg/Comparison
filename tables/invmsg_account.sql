drop table if exists "informix".invmsg_account ;
create table "informix".invmsg_account 
  (
    debtor_code char(10) not null ,
    invmsg_num integer not null ,
    bill_period integer not null ,
    cycle_code char(2) not null 
  );

