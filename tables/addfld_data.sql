drop table if exists "informix".addfld_data ;
create table "informix".addfld_data 
  (
    table_name char(18),
    info_type char(1),
    key_value char(20) not null ,
    info_code char(20),
    key2_value char(20),
    information varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

