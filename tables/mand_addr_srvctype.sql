drop table if exists "informix".mand_addr_srvctype ;
create table "informix".mand_addr_srvctype 
  (
    srvctypecode char(4) not null ,
    addr_type_code char(2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

