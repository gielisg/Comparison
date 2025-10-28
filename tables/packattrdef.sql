drop table if exists "informix".packattrdef ;
create table "informix".packattrdef 
  (
    pkg_code integer not null ,
    pkg_option smallint 
        default 0 not null ,
    attribid integer not null ,
    attribvalue varchar(254) not null ,
    enabled char(1) 
        default 'N' not null ,
    lockedattrib char(1) 
        default 'Y' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (enabled IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (lockedattrib IN ('Y' ,'N' )) constraint "informix".yes_no
  );

