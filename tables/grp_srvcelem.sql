drop table if exists "informix".grp_srvcelem ;
create table "informix".grp_srvcelem 
  (
    prodgrpid integer not null ,
    srvctypecode char(4) not null ,
    network_id char(2) not null ,
    srvcelemtypecd char(3) not null ,
    buslogiccd char(10),
    grp_srvcelemwef datetime year to second not null ,
    grp_srvcelemwet datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

