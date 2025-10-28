drop table if exists "informix".attrib_class ;
create table "informix".attrib_class 
  (
    attr_class_id integer not null ,
    attr_class_narr varchar(50) not null ,
    note lvarchar(1024),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

