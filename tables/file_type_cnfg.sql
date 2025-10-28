drop table if exists "informix".file_type_cnfg ;
create table "informix".file_type_cnfg 
  (
    file_type_code char(10) not null ,
    localhost varchar(32) not null ,
    filenametemplate varchar(255),
    compresstype char(4),
    compresstemplate varchar(255),
    compresspassword varchar(128),
    unix2dos char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (unix2dos IN ('Y' ,'N' )) constraint "informix".yes_no
  );

