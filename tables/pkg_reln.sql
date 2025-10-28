drop table if exists "informix".pkg_reln ;
create table "informix".pkg_reln 
  (
    prntpkg_code integer not null ,
    chldpkg_code integer not null ,
    chldpkg_option integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

