drop table if exists "informix".dcelsvtp ;
create table "informix".dcelsvtp 
  (
    disceligid integer not null ,
    srvctypecode char(4) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

