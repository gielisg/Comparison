drop table if exists "informix".prodsrvc ;
create table "informix".prodsrvc 
  (
    prodcode varchar(194) not null ,
    srvctypecode char(4) not null ,
    pkg_code integer,
    option smallint,
    event_type char(2),
    event_code char(2),
    prodsrvcsetconn char(1) not null ,
    prodsrvcasgnsvno char(1) 
        default 'N' not null ,
    networkid char(2),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (prodsrvcasgnsvno IN ('Y' ,'N' ,'M' )) constraint "informix".yes_no
    
    check (prodsrvcsetconn IN ('Y' ,'N' ,'M' ,'E' )) constraint "informix".ynme1
  );

