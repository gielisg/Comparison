drop table if exists "informix".ordritemattr ;
create table "informix".ordritemattr 
  (
    ordritemattrid serial not null ,
    ordritemid integer not null ,
    ordritemattrcode varchar(12) not null ,
    srvcattribid integer,
    attr_value lvarchar(30000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

