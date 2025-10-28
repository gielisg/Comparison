drop table if exists "informix".pkg_chgnarr ;
create table "informix".pkg_chgnarr 
  (
    pkg_code integer not null ,
    option integer 
        default 0 not null ,
    chg_code char(4) not null ,
    pkg_chgnarr varchar(128),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

