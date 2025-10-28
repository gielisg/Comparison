drop table if exists "informix".stckgada ;
create table "informix".stckgada 
  (
    stckgadapcn char(8) not null ,
    stckgadaprodtype char(1) not null ,
    stckgadasimno varchar(20,10) not null ,
    stckgadaimei varchar(15),
    stckgadaproddate date not null ,
    stckgadaused char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (stckgadaused IN ('Y' ,'N' )) constraint "informix".yes_no
  );

