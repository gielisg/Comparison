drop table if exists "informix".whsl_pkg_map ;
create table "informix".whsl_pkg_map 
  (
    ret_pkg_code integer not null ,
    ret_pkg_option smallint 
        default 0 not null ,
    srvctypecode char(4) 
        default 'ALL' not null ,
    whsl_pkg_code integer not null ,
    whsl_pkg_option smallint,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

