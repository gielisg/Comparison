drop table if exists "informix".cl_dt_map_tables ;
create table "informix".cl_dt_map_tables 
  (
    table_name varchar(32) not null ,
    mapping_narr varchar(32) not null ,
    id_field_name varchar(32) not null ,
    field1_name varchar(32) not null ,
    field1_type varchar(32) not null ,
    field1_narr varchar(32) not null ,
    field1_source_sql varchar(255),
    field2_name varchar(32),
    field2_type varchar(32),
    field2_narr varchar(32),
    field2_source_sql varchar(255),
    field3_name varchar(32),
    field3_type varchar(32),
    field3_narr varchar(32),
    field3_source_sql varchar(255),
    has_tar_class_code char(1) 
        default 'Y' not null ,
    has_rate_method char(1) 
        default 'Y' not null ,
    has_override_desc char(1) 
        default 'Y' not null ,
    sp_cl_group_code char(2),
    enabled char(1) 
        default 'Y' not null ,
    disp_order integer 
        default 3 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (enabled IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (has_override_desc IN ('Y' ,'N' ,'M' )) constraint "informix".ynm2,
    
    check (has_tar_class_code IN ('Y' ,'N' ,'M' ,'X' )) constraint "informix".ynmx3,
    
    check (has_rate_method IN ('Y' ,'N' ,'M' ,'X' )) constraint "informix".ynmx4
  );

