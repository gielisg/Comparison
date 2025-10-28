drop table if exists "informix".object_types ;
create table "informix".object_types 
  (
    type_id serial not null ,
    type_narr varchar(32) not null ,
    system_record char(1) 
        default 'Y' not null ,
    note varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (system_record IN ('Y' ,'N' ,'I' )) constraint "informix".yni6
  );

