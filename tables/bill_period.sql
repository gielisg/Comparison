drop table if exists "informix".bill_period ;
create table "informix".bill_period 
  (
    bill_period integer not null ,
    start_date date not null ,
    bill_period_desc char(15) not null 
  );

