drop table if exists "informix".autochgeligsc ;
create table "informix".autochgeligsc 
  (
    autochgeligid integer not null ,
    stmt_code char(1) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

