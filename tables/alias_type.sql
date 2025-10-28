drop table if exists "informix".alias_type ;
create table "informix".alias_type 
  (
    alias_type char(2) not null ,
    alias_type_narr varchar(32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

