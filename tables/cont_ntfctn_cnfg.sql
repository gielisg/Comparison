drop table if exists "informix".cont_ntfctn_cnfg ;
create table "informix".cont_ntfctn_cnfg 
  (
    id serial not null ,
    contact_code char(10) not null ,
    configuration lvarchar(2000),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

