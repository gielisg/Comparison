drop table if exists "informix".courier_code ;
create table "informix".courier_code 
  (
    courier_code char(4) not null ,
    courier_narr varchar(32) not null ,
    account_num char(15)
  );

