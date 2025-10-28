drop table if exists "informix".lntpentr ;
create table "informix".lntpentr 
  (
    lntpentrid serial not null ,
    linetypecd char(1) not null ,
    trantypecd char(1) not null ,
    entrtypecd char(2) not null 
  );

