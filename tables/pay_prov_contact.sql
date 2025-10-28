drop table if exists "informix".pay_prov_contact ;
create table "informix".pay_prov_contact 
  (
    contact_code char(10) not null ,
    pay_provider integer not null ,
    ext_contact_code varchar(254) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

