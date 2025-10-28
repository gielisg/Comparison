drop table if exists "informix".commpaid ;
create table "informix".commpaid 
  (
    commpaidid serial not null ,
    dealer_id char(10) not null ,
    commpaidstat char(4) not null ,
    commpaidcalcamnt decimal(14,6) not null ,
    commpaidpaidamnt decimal(14,6) not null ,
    commpaiddatm datetime year to second,
    commpaidchequeno char(20),
    file_ref integer,
    commpaidcomment varchar(254),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (commpaidstat IN ('PAID' ,'VOID' )) constraint "informix".paid_void6
  );

