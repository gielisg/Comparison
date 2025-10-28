drop table if exists "informix".srvcelem ;
create table "informix".srvcelem 
  (
    srvctypecode char(4) not null ,
    network_id char(2) not null ,
    srvcelemtypecd char(3) not null ,
    srvcelemcatcd char(3) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

