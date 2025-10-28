drop table if exists "informix".veda_config ;
create table "informix".veda_config 
  (
    bus_unit_code char(2) not null ,
    veda_oper_code varchar(32) not null ,
    veda_subs_code varchar(32) not null ,
    veda_branch_code varchar(32) not null ,
    veda_sec_code varchar(32) not null ,
    veda_url varchar(128),
    veda_company varchar(64),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

