drop table if exists "informix".attribcontact ;
create table "informix".attribcontact 
  (
    type char(1) not null ,
    attribid integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (type IN ('P' ,'B' ,'A' )) constraint "informix".conttype_ex
  );

