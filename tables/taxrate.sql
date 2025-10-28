drop table if exists "informix".taxrate ;
create table "informix".taxrate 
  (
    taxrateid serial not null ,
    taxid integer not null ,
    taxratewefr datetime year to second not null ,
    taxrateweto datetime year to second not null ,
    taxrateperc decimal(6,4) 
        default 0.0000 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

