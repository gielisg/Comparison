drop table if exists "informix".voucher_rel ;
create table "informix".voucher_rel 
  (
    voucher_id integer not null ,
    oth_voucher_id integer not null ,
    rel_type char(1) 
        default 'R' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

