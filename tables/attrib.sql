drop table if exists "informix".attrib ;
create table "informix".attrib 
  (
    attribref serial not null ,
    attribid integer not null ,
    event_ref integer,
    key_value integer,
    attribvalue varchar(128,32) not null ,
    attribwefr datetime year to second 
        default  datetime (1990-01-01 00:00:00) year to second not null ,
    attribweto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    attriblocked char(1) 
        default 'N' not null ,
    prntattribref integer,
    attribvalue2 varchar(128),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (attriblocked IN ('Y' ,'N' )) constraint "informix".yes_no
  );

