drop table if exists "informix".packtype ;
create table "informix".packtype 
  (
    packtypecd char(2) not null ,
    packtypenarr varchar(32) not null ,
    packtypedflt char(1) not null ,
    packtypeordr integer not null ,
    event_type char(2) not null ,
    event_code char(2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

