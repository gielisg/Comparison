drop table if exists "informix".strtype ;
create table "informix".strtype 
  (
    strtypecd char(6) not null ,
    srvctypecode char(4) 
        default 'ALL' not null ,
    strtypenarr varchar(32) not null ,
    strtypedflt varchar(128),
    strtypelen integer,
    strtypeenbl char(1) 
        default 'Y' not null ,
    strtypesql char(2000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (strtypeenbl IN ('Y' ,'N' )) constraint "informix".yes_no
  );

