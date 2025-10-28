drop table if exists "informix".dcbffixd ;
create table "informix".dcbffixd 
  (
    discbenfid integer not null ,
    dcbffixdamnt decimal(18,10) not null ,
    dcbffixdprorata char(1) 
        default 'Y' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dcbffixdprorata IN ('Y' ,'N' )) constraint "informix".yes_no
  );

