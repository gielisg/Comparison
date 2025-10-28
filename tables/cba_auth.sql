drop table if exists "informix".cba_auth ;
create table "informix".cba_auth 
  (
    contact_code char(10) not null ,
    cba_authdbit char(1),
    cba_authcred char(1),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (cba_authdbit IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (cba_authcred IN ('Y' ,'N' )) constraint "informix".yes_no
  );

