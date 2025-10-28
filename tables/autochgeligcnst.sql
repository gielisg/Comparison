drop table if exists "informix".autochgeligcnst ;
create table "informix".autochgeligcnst 
  (
    autochgeligid integer not null ,
    cont_status char(3) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

