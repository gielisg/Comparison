drop table if exists "informix".paycollmode ;
create table "informix".paycollmode 
  (
    paycollmodecode char(1) not null ,
    paycollmodenarr varchar(64) not null ,
    isunwindmode char(1) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

