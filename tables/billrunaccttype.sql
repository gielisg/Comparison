drop table if exists "informix".billrunaccttype ;
create table "informix".billrunaccttype 
  (
    billrunactpcode char(2) not null ,
    billrunactpnarr varchar(32,16) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

