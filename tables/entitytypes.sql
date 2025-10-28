drop table if exists "informix".entitytypes ;
create table "informix".entitytypes 
  (
    entityid serial not null ,
    entitynarr varchar(254,32) not null ,
    custevnt char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (custevnt IN ('Y' ,'N' )) constraint "informix".yes_no
  );

