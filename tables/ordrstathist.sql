drop table if exists "informix".ordrstathist ;
create table "informix".ordrstathist 
  (
    ordrid integer not null ,
    ordrstatcode char(4) not null ,
    ordrstathistwefr datetime year to second not null ,
    ordrstathistweto datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

