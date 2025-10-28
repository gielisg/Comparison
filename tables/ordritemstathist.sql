drop table if exists "informix".ordritemstathist ;
create table "informix".ordritemstathist 
  (
    orditmstathistid serial not null ,
    ordritemstatcode char(4) not null ,
    ordritemid integer not null ,
    ordritemstatwefr datetime year to second not null ,
    ordritemstatweto datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

