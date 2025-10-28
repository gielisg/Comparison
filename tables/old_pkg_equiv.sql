drop table if exists "informix".old_pkg_equiv ;
create table "informix".old_pkg_equiv 
  (
    old_pkg varchar(32,10) not null ,
    nt_pkg_code smallint not null ,
    sp_pkg_code integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

