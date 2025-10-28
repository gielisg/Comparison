drop table if exists "informix".bankdpstpaytype ;
create table "informix".bankdpstpaytype 
  (
    bank_acct_id integer not null ,
    pay_code char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

