drop table if exists "informix".attrdefsrvctype ;
create table "informix".attrdefsrvctype 
  (
    srvctypecode char(4) not null ,
    attribid integer not null ,
    exclude char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (exclude IN ('Y' ,'N' )) constraint "informix".yes_no
  );

