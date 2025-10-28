drop table if exists "informix".packdisc ;
create table "informix".packdisc 
  (
    packdiscid serial not null ,
    pkg_code integer not null ,
    option smallint 
        default 0 not null ,
    discid integer not null ,
    packdiscauto char(1) 
        default 'Y' not null ,
    packdiscwefr datetime year to second not null ,
    packdiscweto datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (packdiscauto IN ('Y' ,'N' )) constraint "informix".yes_no
  );

