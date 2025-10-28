drop table if exists "informix".grp_recipients ;
create table "informix".grp_recipients 
  (
    grp_id integer not null ,
    recipient varchar(18,10) not null ,
    dt_read datetime year to second,
    cc_only char(1) 
        default 'N' not null ,
    rora char(1) 
        default 'N' not null ,
    read_oth char(1) 
        default 'N' not null ,
    
    check (read_oth IN ('N' ,'Y' )) constraint "informix".yes_no
    
    check (cc_only IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (read_oth IN ('Y' ,'N' )) constraint "informix".yes_no
  );

