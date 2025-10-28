drop table if exists "informix".pay_prov_attribs ;
create table "informix".pay_prov_attribs 
  (
    pay_provider integer not null ,
    key_value varchar(32,10) not null ,
    attrib_value lvarchar(512) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

