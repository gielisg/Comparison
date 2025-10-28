drop table if exists "informix".mand_phone ;
create table "informix".mand_phone 
  (
    cont_defined_as char(4) not null ,
    phone_type_code char(2) not null ,
    cont_type char(1),
    
    check (cont_type IN ('P' ,'B' ,NULL )) constraint "informix".cont_type_null4
  );

