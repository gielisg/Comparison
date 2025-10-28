drop table if exists "informix".entrtype ;
create table "informix".entrtype 
  (
    entrtypecd char(2) not null ,
    entrtypenarr varchar(32),
    entrtypedbcr char(1) not null ,
    entrtypeajst char(1) not null ,
    entrtyperevn char(1) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

