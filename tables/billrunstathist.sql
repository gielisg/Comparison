drop table if exists "informix".billrunstathist ;
create table "informix".billrunstathist 
  (
    billrunstatref serial not null ,
    billrunref integer not null ,
    billrunstatcode char(4) not null ,
    stat_wefr datetime year to second not null ,
    stat_weto datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

