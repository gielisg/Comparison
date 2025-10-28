drop table if exists "informix".addfld_trigger ;
create table "informix".addfld_trigger 
  (
    af_trggr_ref serial not null ,
    table_name char(18),
    info_type char(1),
    information varchar(128) not null ,
    targetkey char(18) not null ,
    targetvalue varchar(128) not null ,
    af_trggr_enabled char(1) 
        default 'Y',
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

