drop table if exists "informix".evnt_bill ;
create table "informix".evnt_bill 
  (
    bill_ref integer not null ,
    event_ref integer not null ,
    type char(1) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (type IN ('R' ,'D' ,'C' ,'P' )) constraint "informix".event_bill_type20
  );

