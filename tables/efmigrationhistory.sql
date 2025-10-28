drop table if exists "informix".efmigrationhistory ;
create table "informix".efmigrationhistory 
  (
    migrationid varchar(150) not null ,
    productversion varchar(32) not null 
  );

