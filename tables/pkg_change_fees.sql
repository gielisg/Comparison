drop table if exists "informix".pkg_change_fees ;
create table "informix".pkg_change_fees 
  (
    pkgchangefeesid serial not null ,
    pkg_code integer not null ,
    option smallint not null ,
    target_pkg_code integer not null ,
    target_option smallint not null ,
    fee decimal(10,4) 
        default 0.0000 not null ,
    chg_code char(4),
    description varchar(254),
    rule_id char(2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

