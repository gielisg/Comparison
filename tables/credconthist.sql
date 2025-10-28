drop table if exists "informix".credconthist ;
create table "informix".credconthist 
  (
    credconthistid serial not null ,
    debtor_code char(10) not null ,
    plan_code char(5) not null ,
    cchiststatcode char(2) not null ,
    cchiststatdatm datetime year to second 
        default current year to second not null ,
    cchistoper varchar(18),
    cchistfollupdate date,
    cchistreascode char(2),
    cchistnote varchar(255),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

