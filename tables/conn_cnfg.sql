drop table if exists "informix".conn_cnfg ;
create table "informix".conn_cnfg 
  (
    bus_unit_code char(2) not null ,
    dsn char(32) not null ,
    dflt_database char(32),
    mts_sever char(256),
    msmq_server char(256),
    is_dflt char(1) 
        default 'N' not null ,
    access_method char(1) 
        default 'H' not null ,
    
    check (access_method IN ('H' ,'D' ,'M' )) constraint "informix".access_meth3,
    
    check (is_dflt IN ('Y' ,'N' )) constraint "informix".yes_no
  );

