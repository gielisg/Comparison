drop table if exists "informix".pro_pkg ;
create table "informix".pro_pkg 
  (
    pro_code char(5) not null ,
    pkg_code integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

