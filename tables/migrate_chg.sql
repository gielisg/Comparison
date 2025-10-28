drop table if exists "informix".migrate_chg ;
create table "informix".migrate_chg 
  (
    charge_code char(4) not null ,
    migrated_code char(6) not null ,
    pkg_code integer
  );

