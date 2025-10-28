drop table if exists "informix".bincat_portal ;
create table "informix".bincat_portal 
  (
    bincatid integer not null ,
    portal_type_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

