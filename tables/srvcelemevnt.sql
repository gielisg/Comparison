drop table if exists "informix".srvcelemevnt ;
create table "informix".srvcelemevnt 
  (
    srvcelemevntid serial not null ,
    srvctypecode char(4) not null ,
    network_id char(2) not null ,
    srvcelemtypecd char(3) not null ,
    event_type char(2) not null ,
    event_code char(2) not null ,
    srvcelemevntordr integer not null ,
    targ_event_type char(2),
    targ_event_code char(2),
    srvcelemevntwef datetime year to second not null ,
    srvcelemevntwet datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

