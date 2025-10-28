drop table if exists "informix".ch_dt_table ;
create table "informix".ch_dt_table 
  (
    ch_dt_tabcd char(4) not null ,
    file_type_code char(10) not null ,
    tabname char(18) not null ,
    source_narr varchar(32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

