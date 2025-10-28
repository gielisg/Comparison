drop table if exists "informix".attribreln ;
create table "informix".attribreln 
  (
    prntattribid integer not null ,
    prntattribvalue varchar(128) not null ,
    chldattribid integer not null ,
    chldattribaction char(1) not null ,
    chldattribvalue varchar(128),
    chldattriblock char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (chldattribaction IN ('E' ,'D' )) constraint "informix".attribaction,
    
    check (chldattriblock IN ('Y' ,'N' )) constraint "informix".yes_no
  );

