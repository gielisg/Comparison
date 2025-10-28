drop table if exists "informix".voucher_types ;
create table "informix".voucher_types 
  (
    type_id char(2) not null ,
    issuer_id char(2) not null ,
    type_narr varchar(32) not null ,
    voucher_value decimal(8,2) 
        default 0.00 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

