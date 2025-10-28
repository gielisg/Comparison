drop table if exists "informix".attrchrgdate ;
create table "informix".attrchrgdate 
  (
    attrchrgdateref serial not null ,
    attrchrggrpref integer not null ,
    minplanagemnths integer 
        default 0 not null ,
    maxplanagemnths integer 
        default 999999 not null ,
    attrchrgwefr date not null ,
    attrchrgweto date 
        default  '01/01/9999' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

