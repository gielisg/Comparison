drop table if exists "informix".credconthisthist ;
create table "informix".credconthisthist 
  (
    cchisthistid serial not null ,
    credconthistid integer not null ,
    cchisthistwefr datetime year to second not null ,
    cchisthistweto datetime year to second not null ,
    cchiststatcode char(2) not null ,
    cchistreascode char(2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

