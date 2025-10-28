drop table if exists "informix".addfld_code ;
create table "informix".addfld_code 
  (
    table_name char(18) not null ,
    info_type char(1) not null ,
    strtypecd char(6),
    srvctypecode char(4),
    info_narr char(32) not null ,
    label_narr char(32) not null ,
    message char(32),
    default_value varchar(255),
    order smallint,
    start_dt datetime year to second not null ,
    end_dt datetime year to second not null ,
    object_id integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

