drop table if exists "informix".portal_def_type ;
create table "informix".portal_def_type 
  (
    cont_defined_as char(4) not null ,
    portal_type_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

