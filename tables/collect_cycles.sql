drop table if exists "informix".collect_cycles ;
create table "informix".collect_cycles 
  (
    cycle_code char(2) not null ,
    cycle_narr varchar(32,1) not null ,
    cycle_dflt char(1) 
        default 'N' not null ,
    cycle_dis_ordr integer 
        default 1 not null ,
    display char(1) 
        default 'Y' not null ,
    
    check (cycle_dflt IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (display IN ('Y' ,'N' )) constraint "informix".yes_no
  );

