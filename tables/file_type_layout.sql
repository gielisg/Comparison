drop table if exists "informix".file_type_layout ;
create table "informix".file_type_layout 
  (
    file_type_code char(10) not null ,
    definition_wefr date not null ,
    definition_weto date 
        default  '01/01/9999' not null ,
    delim_heading char(1200) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

