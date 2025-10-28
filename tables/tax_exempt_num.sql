drop table if exists "informix".tax_exempt_num ;
create table "informix".tax_exempt_num 
  (
    contact_code char(10) not null ,
    tax_exempt_num char(18) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

