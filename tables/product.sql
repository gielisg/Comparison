drop table if exists "informix".product ;
create table "informix".product 
  (
    prod_code char(20) not null ,
    prod_type_code char(3) not null ,
    manu_code char(3) not null ,
    prod_narr varchar(255) not null ,
    rrp decimal(8,2) not null ,
    installable char(1) 
        default 'Y' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (installable IN ('Y' ,'N' )) constraint "informix".yes_no
  );

