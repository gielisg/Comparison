drop table if exists "informix".cc_srvc_config ;
create table "informix".cc_srvc_config 
  (
    srvctypecode char(4) not null ,
    typegroup char(1) not null ,
    visible char(1) 
        default 'N' not null ,
    childvisible char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (typegroup IN ('V' ,'D' ,'O' )) constraint "informix".typegroup,
    
    check (visible IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (childvisible IN ('Y' ,'N' )) constraint "informix".yes_no
  );

