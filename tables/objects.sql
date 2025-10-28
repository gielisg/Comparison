drop table if exists "informix".objects ;
create table "informix".objects 
  (
    object_id integer not null ,
    type_id integer not null ,
    object_narr varchar(254,20) not null ,
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
    
    check (system_record IN ('Y' ,'N' ,'I' )) constraint "informix".yni5
  );

