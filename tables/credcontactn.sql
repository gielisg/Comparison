drop table if exists "informix".credcontactn ;
create table "informix".credcontactn 
  (
    ccactncode char(2) not null ,
    ccactnnarr varchar(32) not null ,
    ccactnordr integer not null ,
    ccactnenbl char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (ccactnenbl IN ('Y' ,'N' )) constraint "informix".yes_no
  );

