drop table if exists "informix".autochgeligchcd ;
create table "informix".autochgeligchcd 
  (
    autochgeligid integer not null ,
    chg_code char(4) not null ,
    count_bill_chgs char(1) 
        default 'Y' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (count_bill_chgs IN ('Y' ,'N' )) constraint "informix".yes_no
  );

