drop table if exists "informix".mand_email ;
create table "informix".mand_email 
  (
    cont_defined_as char(4) not null ,
    email_type_code char(2) not null ,
    cont_type char(1),
    
    check (cont_type IN ('P' ,'B' ,NULL )) constraint "informix".cont_type_null10
  );

