drop table if exists "informix".cont_bill_cycles ;
create table "informix".cont_bill_cycles 
  (
    debtor_code char(10) not null ,
    cycle_wef date not null ,
    cycle_code char(2) not null ,
    cycle_wet date 
        default  '01/01/9999' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

