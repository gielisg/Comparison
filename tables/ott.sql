drop table if exists "informix".ott ;
create table "informix".ott 
  (
    id serial not null ,
    contact_code char(10),
    application varchar(80,10) not null ,
    token varchar(254) not null ,
    expiry_dt datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

