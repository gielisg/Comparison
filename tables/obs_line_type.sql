drop table if exists "informix".obs_line_type ;
create table "informix".obs_line_type 
  (
    line_type_code char(1) not null ,
    line_type_desc varchar(80)
  );

