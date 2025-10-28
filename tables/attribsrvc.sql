drop table if exists "informix".attribsrvc ;
create table "informix".attribsrvc 
  (
    network_id char(2) not null ,
    srvctypecode char(4) not null ,
    relntype char(1) not null ,
    attribid integer not null ,
    attribsave char(1) 
        default 'Y' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (attribsave IN ('Y' ,'N' )) constraint "informix".yes_no
  );

