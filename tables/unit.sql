drop table if exists "informix".unit ;
create table "informix".unit 
  (
    unit char(1) not null ,
    unitnarr varchar(32,10) not null ,
    unitshrtnarrsing varchar(18) not null ,
    unitshrtnarrplur varchar(18) not null ,
    qntynarr varchar(16) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

