drop table if exists "informix".mand_id ;
create table "informix".mand_id 
  (
    mand_id serial not null ,
    id_type char(1) not null ,
    cont_defined_as char(4) not null ,
    cont_type char(1),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

