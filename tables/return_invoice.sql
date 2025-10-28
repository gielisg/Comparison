drop table if exists "informix".return_invoice ;
create table "informix".return_invoice 
  (
    debtor_code char(10) not null ,
    return_reason char(2) not null ,
    address_ref integer,
    return_invoice char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

