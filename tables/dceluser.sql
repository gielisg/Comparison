drop table if exists "informix".dceluser ;
create table "informix".dceluser 
  (
    disceligid integer not null ,
    dcelusermaxrecs integer not null ,
    strtypecd char(6),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

