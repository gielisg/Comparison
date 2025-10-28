drop table if exists "informix".cont_source ;
create table "informix".cont_source 
  (
    source_id integer not null ,
    source_narr varchar(32) not null ,
    source_order integer 
        default 1 not null ,
    source_display char(1) 
        default 'Y' not null ,
    source_default char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (source_display IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (source_default IN ('Y' ,'N' )) constraint "informix".yes_no
  );

