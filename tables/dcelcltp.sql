drop table if exists "informix".dcelcltp ;
create table "informix".dcelcltp 
  (
    disceligid integer not null ,
    tar_class_code smallint not null ,
    dcelcltpenbl char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dcelcltpenbl IN ('Y' ,'N' )) constraint "informix".yes_no
  );

