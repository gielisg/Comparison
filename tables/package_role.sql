drop table if exists "informix".package_role ;
create table "informix".package_role 
  (
    pkg_code integer not null ,
    role_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

