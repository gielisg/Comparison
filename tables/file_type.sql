drop table if exists "informix".file_type ;
create table "informix".file_type 
  (
    file_type_code char(10) not null ,
    file_class_code char(3) not null ,
    network_id char(2) not null ,
    file_delim char(1),
    file_type_narr char(32) not null ,
    comp_dll varchar(254,32) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

