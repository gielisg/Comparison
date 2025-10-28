drop table if exists "informix".sel_file ;
create table "informix".sel_file 
  (
    sel_file_num serial not null ,
    file_type_code char(10) not null ,
    sel_file_name varchar(80) not null ,
    sel_directory varchar(80),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

