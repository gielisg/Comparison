drop table if exists "informix".identtype ;
create table "informix".identtype 
  (
    identtypecd char(4) not null ,
    identtypenarr varchar(254),
    identtypeevnt char(1) 
        default 'N' not null ,
    strtypecd char(6),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (identtypeevnt IN ('Y' ,'N' )) constraint "informix".yes_no
  );

