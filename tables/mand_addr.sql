drop table if exists "informix".mand_addr ;
create table "informix".mand_addr 
  (
    cont_defined_as char(4) not null ,
    addr_type_code char(2) not null ,
    cont_type char(1),
    
    check (cont_type IN ('P' ,'B' )) constraint "informix".cont_type_null2,
    
    check (cont_type IN ('P' ,'B' )) constraint "informix".contact_type66
  );

