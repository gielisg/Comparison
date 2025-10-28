drop table if exists "informix".pay_status ;
create table "informix".pay_status 
  (
    pay_status char(2) not null ,
    pay_status_narr char(32) not null ,
    method_action char(1) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (method_action IN ('C' ,'N' )) constraint "informix".method_action22
  );

