drop table if exists "informix".loyltranallc ;
create table "informix".loyltranallc 
  (
    loyltranallcref serial not null ,
    fromloyltranref integer not null ,
    toloyltranref integer not null ,
    loyltranallcamnt decimal(10,2) not null ,
    loyltranallcstat char(2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (loyltranallcstat IN ('AP' ,'VD' )) constraint "informix".loyltranallcstat2
  );

