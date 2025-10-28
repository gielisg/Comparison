drop table if exists "informix".ntwkevnt ;
create table "informix".ntwkevnt 
  (
    ntwkevntid serial not null ,
    srvctypecode char(4) not null ,
    network_id char(2) not null ,
    event_type char(2) not null ,
    event_code char(2) not null ,
    ntwkevntoptn char(1) 
        default 'O' not null ,
    ntwkevntdflt char(1) 
        default 'N' not null ,
    
    check (ntwkevntoptn IN ('O' ,'C' ,'X' )) constraint "informix".ntwkevntoptn2,
    
    check (ntwkevntdflt IN ('Y' ,'N' )) constraint "informix".yes_no
  );

